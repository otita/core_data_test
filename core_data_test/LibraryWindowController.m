//
//  LibraryWindowController.m
//  core_data_test
//
//  Created by Taito Lee on 2015/09/06.
//  Copyright (c) 2015年 otita. All rights reserved.
//

#import "LibraryWindowController.h"
#import "LibraryWindowDataSource.h"

@interface LibraryWindowController () <NSTableViewDelegate> {
  __strong LibraryWindowDataSource *_data_source;
}

@property (weak) IBOutlet NSPopUpButton *author_popup;
@property (weak) IBOutlet NSPopUpButton *price_popup;
@property (weak) IBOutlet NSTableView *library_tableview;

@end

@implementation LibraryWindowController

- (id)init {
  if (self = [super init]) {
    _data_source = [[LibraryWindowDataSource alloc] init];
  }
  return self;
}

- (void)windowDidLoad {
  [super windowDidLoad];
    
// Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
  [self.library_tableview setDelegate:self];
}

- (NSString *)nibName {
  return @"LibraryWindow";
}

- (void)render {
  [self.library_tableview reloadData];
}

@end
