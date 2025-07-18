//
//  MemoryValidator.h
//  MemoryGraph
//
//  Created by chiwei.feng@pixocial.com on06.09.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//


#include <stdbool.h>
#include <objc/objc.h>

/**
 Test if a pointer is an Objective-C object

 @param inPtr is the pointer to check
 @return true if the pointer is an Objective-C object
 */
bool IsObjcObject(const void *inPtr);
Class class_from_ptr(const void *inPtr);

/**
 Test if a pointer is a tagged pointer

 @param inPtr is the pointer to check
 @param outClass returns the registered class for the tagged pointer.
 @return true if the pointer is a tagged pointer.
 */
bool IsObjcTaggedPointer(const void *inPtr, Class *outClass);

