//
//  LibraryWindowDataSource.h
//  core_data_test
//
//  Created by Taito Lee on 2015/09/06.
//  Copyright (c) 2015年 otita. All rights reserved.
//

#import <Cocoa/cocoa.h>

@interface LibraryWindowDataSource : NSObject

- (NSMenu *)menuForAuthorPopUp;
- (NSMenu *)menuForPricePopUp;

@end
