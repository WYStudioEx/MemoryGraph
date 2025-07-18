//
//  SwiftIntrospection.h
//  MemoryGraph
//
//  Created by chiwei.feng@pixocial.com on22.10.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Inspectable.h"
@class MemoryObjectRequest;

NS_ASSUME_NONNULL_BEGIN

/// A concrete class which adopts to inspectable protocol for inspecting Swift objects
@interface SwiftIntrospection : NSObject <Inspectable>

@end

NS_ASSUME_NONNULL_END
