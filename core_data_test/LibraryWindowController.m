//
//  LibraryWindowController.m
//  core_data_test
//
//  Created by Taito Lee on 2015/09/06.
//  Copyright (c) 2015年 otita. All rights reserved.
//

#import "LibraryWindowController.h"

@interface LibraryWindowController ()

@property (weak) IBOutlet NSPopUpButton *author_popup;
@property (weak) IBOutlet NSPopUpButton *price_popup;

@end

@implementation LibraryWindowController

- (void)windowDidLoad {
  [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (NSString *)nibName {
  return @"LibraryWindow";
}

@end
