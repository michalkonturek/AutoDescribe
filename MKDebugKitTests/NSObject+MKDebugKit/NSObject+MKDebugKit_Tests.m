//
//  NSObject+MKDebugKit_Tests.m
//  MKDebugKit
//
//  Created by Michal Konturek on 20/10/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "Base_Test.h"

@interface NSObject_MKDebugKit_Tests : SenTestCase

@property (nonatomic, strong) TestDummy *test_dummy;

@end

@implementation NSObject_MKDebugKit_Tests

- (void)setUp {
    [super setUp];
    self.test_dummy = [TestDummy create];
}

- (void)tearDown {
    self.test_dummy = nil;
    [super tearDown];
}

- (void)test_propertyList {
    NSArray *result = [TestDummy MK_propertyList];
    
    assertThat(result, hasCountOf(3));
    assertThat(result, containsInAnyOrder(@"propertyNumber", @"propertyString", @"propertyInteger", nil));
}

- (void)test_methodListWithoutProperties {
    NSArray *result = [TestDummy MK_methodListOnly];
    
    assertThat(result, hasCountOf(2));
    assertThat(result, containsInAnyOrder(@"method_no_parameter",
                                          @"method_one_parameter:",
                                          nil));
}

- (void)test_methodList {
    NSArray *result = [TestDummy MK_methodList];
    
    assertThat(result, hasCountOf(9));
    assertThat(result, containsInAnyOrder(@"method_no_parameter",
                                          @"method_one_parameter:",
                                          @".cxx_destruct",
                                          @"setPropertyInteger:",
                                          @"setPropertyNumber:",
                                          @"setPropertyString:",
                                          @"propertyInteger",
                                          @"propertyNumber",
                                          @"propertyString",
                                          nil));
}

@end
