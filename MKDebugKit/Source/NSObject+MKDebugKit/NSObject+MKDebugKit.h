//
//  NSObject+MKDebugKit.h
//  MKDebugKit
//
//  Created by Michal Konturek on 20/10/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "MKDebugKit.h"

@interface NSObject (MKDebugKit)

+ (NSArray *)MK_propertyList;
+ (NSArray *)MK_propertyList:(Class)clazz;

+ (NSArray *)MK_methodListWithoutProperties;
+ (NSArray *)MK_methodListWithoutProperties:(Class)clazz;

+ (NSArray *)MK_methodList;
+ (NSArray *)MK_methodList:(Class)clazz;

- (void)MK_printObject;

- (void)MK_printObjectAttributes;
- (void)MK_printObjectAttributesForKeys:(NSArray *)keys;

- (void)MK_printObjectMethods;

- (NSString *)MK_className;

@end
