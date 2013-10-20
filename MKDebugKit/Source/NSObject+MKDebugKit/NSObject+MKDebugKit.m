//
//  NSObject+MKDebugKit.m
//  MKDebugKit
//
//  Created by Michal Konturek on 20/10/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "NSObject+MKDebugKit.h"

@implementation NSObject (MKDebugKit)

+ (NSArray *)MK_propertyList {
    METHOD_NOT_IMPLEMENTED
}

+ (NSArray *)MK_propertyList:(Class)clazz {
    METHOD_NOT_IMPLEMENTED
}

+ (NSArray *)MK_methodList {
    METHOD_NOT_IMPLEMENTED
}

+ (NSArray *)MK_methodList:(Class)clazz {
    METHOD_NOT_IMPLEMENTED
}

- (void)MK_printObject {
    METHOD_NOT_IMPLEMENTED
}

- (void)MK_printObjectAttributes {
    METHOD_NOT_IMPLEMENTED
}

- (void)MK_printObjectAttributesForKeys:(NSArray *)keys {
    METHOD_NOT_IMPLEMENTED
}

- (void)MK_printObjectMethods {
    METHOD_NOT_IMPLEMENTED
}

- (NSString *)MK_className {
    return NSStringFromClass([self class]);
}

@end
