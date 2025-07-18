//
//  IntrospectionResult+Private.h
//  MemoryGraph
//
//  Created by chiwei.feng@pixocial.com on24.10.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import "IntrospectionResult.h"

NS_ASSUME_NONNULL_BEGIN

@interface IntrospectionResult ()

@property (copy, nonatomic) NSArray<MemoryObject *> *retainedObjects;
@property (copy, nonatomic) NSSet<NSString *> *visitedFields;

- (instancetype)initResult NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
