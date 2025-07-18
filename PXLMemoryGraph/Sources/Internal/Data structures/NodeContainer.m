//
//  NodeContainer.m
//  MemoryGraph
//
//  Created by chiwei.feng@pixocial.com on19.09.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import "NodeContainer.h"

@interface NodeContainer ()

@property (strong, nonatomic) NSMutableArray *mutableChildrenList;
@property (strong, nonatomic) NSMutableArray *mutableParentsList;

@end


@implementation NodeContainer

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mutableChildrenList = [NSMutableArray new];
        _mutableParentsList = [NSMutableArray new];
    }
    return self;
}

- (void)insertIntoChildrenList:(id<NodeProtocol>)child {
    [self.mutableChildrenList addObject:child];
}

- (void)insertIntoParentsList:(id<NodeProtocol>)parent {
    [self.mutableParentsList addObject:parent];
}

- (NSArray<id<NodeProtocol>> *)childrenList {
    return [self.mutableChildrenList copy];
}

- (NSArray<id<NodeProtocol>> *)parentsList {
    return [self.mutableParentsList copy];
}

@end
