//
//  BaseWindowController.m
//  core_data_test
//
//  Created by Taito Lee on 2015/09/06.
//  Copyright (c) 2015年 otita. All rights reserved.
//

#import "BaseWindowController.h"

@interface BaseWindowController ()

- (NSString *)nibName;
- (void)render;

@end

@implementation BaseWindowController

- (id)init {
  return [super initWithWindowNibName:self.nibName];
}

- (void)windowDidLoad {
  [super windowDidLoad];
  
  // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
  [self render];
}

- (NSString *)nibName {
  NSLog(@"WARNING : You must impliment this method.");
  return @"";
}

- (void)render {
  NSLog(@"WARNING : You should impliment this method.");
}

@end
