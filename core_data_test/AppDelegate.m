//
//  AppDelegate.m
//  core_data_test
//
//  Created by Taito Lee on 2015/09/06.
//  Copyright (c) 2015年 otita. All rights reserved.
//

#import "AppDelegate.h"
#import "ModelManager.h"
#import "StartWindowController.h"
#import "LibraryWindowController.h"

@interface AppDelegate () {
  StartWindowController *_start_window_controller;
}

- (IBAction)saveAction:(id)sender;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  // Insert code here to initialize your application
  _start_window_controller = [StartWindowController new];
  [_start_window_controller showWindow:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}

#pragma mark - Core Data Saving and Undo support

- (IBAction)saveAction:(id)sender {
  // Performs the save action for the application, which is to send the save: message to the application's managed object context. Any encountered errors are presented to the user.

  ModelManager *manager = [ModelManager sharedModelManager];
  if (![[manager managedObjectContext] commitEditing]) {
    NSLog(@"%@:%@ unable to commit editing before saving", [self class], NSStringFromSelector(_cmd));
  }
  
  NSError *error = nil;
  if ([[manager managedObjectContext] hasChanges] && ![[manager managedObjectContext] save:&error]) {
    [[NSApplication sharedApplication] presentError:error];
  }
}

- (NSUndoManager *)windowWillReturnUndoManager:(NSWindow *)window {
  // Returns the NSUndoManager for the application. In this case, the manager returned is that of the managed object context for the application.
  ModelManager *manager = [ModelManager sharedModelManager];
  return [[manager managedObjectContext] undoManager];
}

- (NSApplicationTerminateReply)applicationShouldTerminate:(NSApplication *)sender {
  // Save changes in the application's managed object context before the application terminates.
  ModelManager *manager = [ModelManager sharedModelManager];
  if (![manager managedObjectContext]) {
    return NSTerminateNow;
  }
  
  if (![[manager managedObjectContext] commitEditing]) {
    NSLog(@"%@:%@ unable to commit editing to terminate", [self class], NSStringFromSelector(_cmd));
    return NSTerminateCancel;
  }
  
  if (![[manager managedObjectContext] hasChanges]) {
    return NSTerminateNow;
  }
  
  NSError *error = nil;
  if (![[manager managedObjectContext] save:&error]) {
    
    // Customize this code block to include application-specific recovery steps.
    BOOL result = [sender presentError:error];
    if (result) {
      return NSTerminateCancel;
    }
    
    NSString *question = NSLocalizedString(@"Could not save changes while quitting. Quit anyway?", @"Quit without saves error question message");
    NSString *info = NSLocalizedString(@"Quitting now will lose any changes you have made since the last successful save", @"Quit without saves error question info");
    NSString *quitButton = NSLocalizedString(@"Quit anyway", @"Quit anyway button title");
    NSString *cancelButton = NSLocalizedString(@"Cancel", @"Cancel button title");
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:question];
    [alert setInformativeText:info];
    [alert addButtonWithTitle:quitButton];
    [alert addButtonWithTitle:cancelButton];
    
    NSInteger answer = [alert runModal];
    
    if (answer == NSAlertFirstButtonReturn) {
      return NSTerminateCancel;
    }
  }
  
  return NSTerminateNow;
}

@end
