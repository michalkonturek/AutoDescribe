//
//  TestDummy.m
//  MKDebugKit
//
//  Created by Michal Konturek on 20/10/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "TestDummy.h"

@implementation TestDummy

+ (instancetype)create {
    TestDummy *object = [[[self class] alloc] init];
    object.propertyInteger = 1;
    object.propertyNumber = @1;
    object.propertyString = @"";
    return object;
}

@end
