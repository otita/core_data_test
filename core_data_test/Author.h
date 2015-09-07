//
//  Author.h
//  core_data_test
//
//  Created by Taito Lee on 2015/09/06.
//  Copyright (c) 2015年 otita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSManagedObject;

@interface Author : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * birth_date;
@property (nonatomic, retain) NSDate * death_date;
@property (nonatomic, retain) NSString * profile;
@property (nonatomic, retain) NSString * birth_place;
@property (nonatomic, retain) NSSet *books;

@end

@interface Author (CoreDataGeneratedAccessors)

- (void)addBooksObject:(NSManagedObject *)value;
- (void)removeBooksObject:(NSManagedObject *)value;
- (void)addBooks:(NSSet *)values;
- (void)removeBooks:(NSSet *)values;

@end
