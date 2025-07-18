//
//  PXLMemoryService.m
//  MemoryGraph
//
//  Created by chiwei.feng@pixocial.com on13.09.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import "PXLMemoryService.h"
#import "Graph.h"
#import "MemoryReader.h"
#import "MemoryObject.h"
#import "MemoryObjectIntrospection.h"
#import <objc/runtime.h>

@interface PXLMemoryService ()

@property (strong, nonatomic, readonly) Graph *graph;
@property (strong, nonatomic) MemoryReader *memoryReader;

@end


@implementation PXLMemoryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _graph = [Graph new];
        _memoryReader = [MemoryReader new];
    }
    return self;
}

#pragma mark - Public

- (NSDictionary *)fullMemoryGraph {
    NSArray<MemoryObject *> *memoryObjects = [self.memoryReader memoryObjects];
    [self buildFullMemoryGraphFromMemoryObjects:memoryObjects];
    return [self.graph fullRawGraph];
}

- (NSDictionary<id<NodeProtocol>, id> *)memoryGraphWithoutClassNames:(NSArray<NSString *> *)classNames {
    NSArray<MemoryObject *> *memoryObjects = [self.memoryReader memoryObjectsWithExcludedClassNames:classNames];
    [self buildFullMemoryGraphFromMemoryObjects:memoryObjects];
    return [self.graph fullRawGraph];
}

- (NSDictionary<id<NodeProtocol>, id> *)retainersForObject:(id)object {
    NSArray<MemoryObject *> *memoryObjects = [self.memoryReader memoryObjects];
    [self buildFullMemoryGraphFromMemoryObjects:memoryObjects];
    MemoryObject *memoryObject = [[MemoryObject alloc] initWithObject:object];
    return [self.graph rootsMapForNode:memoryObject];
}

- (NSDictionary<id<NodeProtocol>, id> *)memoryGraphWithChildrenOnly {
    NSArray<MemoryObject *> *memoryObjects = [self.memoryReader memoryObjects];
    [self buildFullMemoryGraphFromMemoryObjects:memoryObjects];
    return [self.graph rawGraphWithoutEmptyLeafs];
}


#pragma mark - Private

- (void)buildFullMemoryGraphFromMemoryObjects:(NSArray<MemoryObject *> *)memoryObjects {
    MemoryObjectIntrospection *memoryObjectIntrospection = [[MemoryObjectIntrospection alloc] initWithMemoryReader:self.memoryReader];
    for (MemoryObject *memoryObject in memoryObjects) {
        NSArray<MemoryObject *> *retainedObjects = [memoryObjectIntrospection retainedObjectsFromObject:memoryObject];
        for (MemoryObject *retainedObject in retainedObjects) {
            [self.graph addEdgeFromNode:memoryObject toNode:retainedObject];
        }
    }
}


@end
