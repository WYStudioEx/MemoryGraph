//
//  Teacher.h
//  PXLMemoryGraph_Example
//
//  Created by chiwei.feng@pixocial.com on27.09.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Student;

NS_ASSUME_NONNULL_BEGIN

@interface Teacher : NSObject

@property (strong, nonatomic) Student *student;
@property (strong, nonatomic) id undefined;

@end

NS_ASSUME_NONNULL_END
