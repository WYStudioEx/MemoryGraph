//
//  Teacher.m
//  PXLMemoryGraph_Example
//
//  Created by chiwei.feng@pixocial.com on27.09.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"

@interface Teacher ()

@end

@implementation Teacher {
    Student *_secondStudent;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _secondStudent = [Student new];
    }
    return self;
}

@end
