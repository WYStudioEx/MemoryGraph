//
//  IntrospectionFactory.m
//  MemoryGraph
//
//  Created by chiwei.feng@pixocial.com on22.10.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import "IntrospectionFactory.h"
#import "Inspectable.h"
#import "SwiftIntrospection.h"
#import "ObjcIntrospection.h"
#import "MemoryObjectRequest.h"

@interface IntrospectionFactory ()

@property (strong, nonatomic) MemoryObjectRequest *memoryObjectRequest;

@end


@implementation IntrospectionFactory

- (id<Inspectable>)inspectableInstanceFromTypeEncoding:(NSString *)typeEncoding
                                       inspectingClass:(Class)inspectingClass {
    id<Inspectable> introspectionInstance = nil;
    NSString *targetName = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
    NSString *swiftClassNamePrefix = [NSString stringWithFormat:@"%@.", targetName];
    if (typeEncoding.length == 0 && [NSStringFromClass(inspectingClass) hasPrefix:swiftClassNamePrefix]) {
        introspectionInstance = [SwiftIntrospection new];
    } else if (typeEncoding.length > 0 && [typeEncoding characterAtIndex:0] == '@') {
        introspectionInstance = [ObjcIntrospection new];
    }
    return introspectionInstance;
}

@end
