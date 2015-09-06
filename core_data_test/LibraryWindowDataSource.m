//
//  LibraryWindowDataSource.m
//  core_data_test
//
//  Created by Taito Lee on 2015/09/06.
//  Copyright (c) 2015年 otita. All rights reserved.
//

#import "LibraryWindowDataSource.h"

@interface LibraryWindowDataSource ()

@end

@implementation LibraryWindowDataSource

- (NSMenu *)menuForAuthorPopUp {
  return [NSMenu new];
}

- (NSMenu *)menuForPricePopUp {
  return [NSMenu new];
}

@end
