//
//  NSObject+MKDebugKit.m
//  MKDebugKit
//
//  Created by Michal Konturek on 20/10/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "NSObject+MKDebugKit.h"

#import <objc/runtime.h>

@implementation NSObject (MKDebugKit)

+ (NSArray *)MK_propertyList {
    return [self MK_propertyList:[self class]];
}

+ (NSArray *)MK_propertyList:(Class)clazz {
    NSUInteger count;
    objc_property_t *propertyList = class_copyPropertyList(clazz, &count);
    
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:count];
    for (NSInteger idx = 0; idx < count; idx++ ) {
        
        objc_property_t property = propertyList[idx];
        const char *propertyName = property_getName(property);
        
        if (propertyName) {
            [result addObject:[NSString stringWithCString:propertyName encoding:NSUTF8StringEncoding]];
        }
    }
    
    free(propertyList);
    
    return result;
}

+ (NSArray *)MK_methodListWithoutProperties {
    METHOD_NOT_IMPLEMENTED
}

+ (NSArray *)MK_methodListWithoutProperties:(Class)clazz {
    METHOD_NOT_IMPLEMENTED
}

+ (NSArray *)MK_methodList {
    return [self MK_methodList:[self class]];
}

+ (NSArray *)MK_methodList:(Class)clazz {
    NSUInteger count;
    Method *methods = class_copyMethodList(clazz, &count);
    
    NSMutableArray *results = [NSMutableArray arrayWithCapacity:count];
    for (int idx = 0; idx < count ; idx++) {
        SEL selector = method_getName(methods[idx]);
        [results addObject:NSStringFromSelector(selector)];
        
//        const char *methodName = sel_getName(selector);
//        [results addObject:[NSString  stringWithCString:methodName encoding:NSUTF8StringEncoding]];
    }
    
    free(methods);
    
    return results;
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
