//
//  IntrospectionResult.m
//  MemoryGraph
//
//  Created by chiwei.feng@pixocial.com on22.10.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import "IntrospectionResult+Private.h"

@implementation IntrospectionResult

- (instancetype)initResult
{
    self = [super init];
    if (self) {
        _retainedObjects = @[];
        _visitedFields = [NSSet set];
    }
    return self;
}

@end
