//
//  Student.h
//  PXLMemoryGraph_Example
//
//  Created by chiwei.feng@pixocial.com on27.09.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Teacher;

NS_ASSUME_NONNULL_BEGIN

@interface Student : Person

@property (strong, nonatomic) Teacher *teacher;

@end

NS_ASSUME_NONNULL_END
