//
//  LibraryWindowController.h
//  core_data_test
//
//  Created by Taito Lee on 2015/09/06.
//  Copyright (c) 2015年 otita. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "BaseWindowController.h"

@interface LibraryWindowController : BaseWindowController

@end

@interface TestObject : NSObject

@property NSString *title;
@property NSString *author;
@property NSNumber *price;

@end