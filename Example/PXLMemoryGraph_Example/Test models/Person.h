//
//  Person.h
//  PXLMemoryGraph_Example
//
//  Created by chiwei.feng@pixocial.com on02.10.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestingProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <TestingProtocol>

@property (assign, nonatomic)  id someStorableObj;

@end

NS_ASSUME_NONNULL_END
