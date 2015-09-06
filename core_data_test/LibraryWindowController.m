//
//  LibraryWindowController.m
//  core_data_test
//
//  Created by Taito Lee on 2015/09/06.
//  Copyright (c) 2015年 otita. All rights reserved.
//

#import "LibraryWindowController.h"
#import "LibraryWindowDataSource.h"

@interface LibraryWindowController () {
  __strong LibraryWindowDataSource *_data_source;
}

@property (weak) IBOutlet NSPopUpButton *author_popup;
@property (weak) IBOutlet NSPopUpButton *price_popup;
@property (weak) IBOutlet NSTableView *library_tableview;
@property (strong) IBOutlet NSArrayController *books_array_controller;

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
  NSMutableArray *array = [NSMutableArray array];
  for (NSInteger i=0; i<50; i++) {
    NSString *title = [NSString stringWithFormat:@"title%ld", i];
    NSString *author = [NSString stringWithFormat:@"author%ld", i];
    NSNumber *price = [NSNumber numberWithInteger:i*100];
    TestObject *obj = [TestObject new];
    [obj setTitle:title];
    [obj setAuthor:author];
    [obj setPrice:price];
    [array addObject:obj];
  }
  self.books_array_controller.content = array;
}

- (NSString *)nibName {
  return @"LibraryWindow";
}

- (void)render {
  [self.library_tableview reloadData];
}

@end

@implementation TestObject

@synthesize title;
@synthesize author;
@synthesize price;

@end
