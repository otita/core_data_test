//
//  Student.h
//  core_data_test
//
//  Created by Taito Lee on 2015/09/06.
//  Copyright (c) 2015年 otita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Book;

@interface Student : NSManagedObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSNumber *attend_num;
@property (nonatomic, retain) NSNumber *sex;
@property (nonatomic, retain) NSSet *books;
@end

@interface Student (CoreDataGeneratedAccessors)

- (void)addBooksObject:(Book *)value;
- (void)removeBooksObject:(Book *)value;
- (void)addBooks:(NSSet *)values;
- (void)removeBooks:(NSSet *)values;

@end
