//
//  StartWindowController.m
//  core_data_test
//
//  Created by Taito Lee on 2015/09/06.
//  Copyright (c) 2015年 otita. All rights reserved.
//

#import "StartWindowController.h"
#import "LibraryWindowController.h"

@interface StartWindowController () {
  LibraryWindowController *_library_window_controller;
}
- (IBAction)showLibraryWindow:(id)sender;
- (IBAction)showStudentsWindow:(id)sender;

@end

@implementation StartWindowController

- (void)windowDidLoad {
  [super windowDidLoad];
  _library_window_controller = nil;
}

- (NSString *)nibName {
  return @"StartWindow";
}

- (void)render {
  
}

- (IBAction)showLibraryWindow:(id)sender {
  if (!_library_window_controller) {
    _library_window_controller = [LibraryWindowController new];
  }
  [_library_window_controller showWindow:nil];
}

- (IBAction)showStudentsWindow:(id)sender {
}
@end
