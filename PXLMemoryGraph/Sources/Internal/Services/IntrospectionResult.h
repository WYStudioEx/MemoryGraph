//
//  IntrospectionResult.h
//  MemoryGraph
//
//  Created by chiwei.feng@pixocial.com on22.10.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MemoryObject;

NS_ASSUME_NONNULL_BEGIN

/// A class for fetch results returned from introspection instances
@interface IntrospectionResult : NSObject

/// A list of retained objects
@property (nonatomic, readonly) NSArray<MemoryObject *> *retainedObjects;

/// A set of visited fields
@property (nonatomic, readonly) NSSet<NSString *> *visitedFields;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
