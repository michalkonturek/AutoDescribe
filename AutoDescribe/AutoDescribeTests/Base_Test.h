//
//  Base_Tests.h
//
//  Created by Michal Konturek on 20/10/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//


#import <XCTest/XCTest.h>

#define HC_SHORTHAND
#import <OCHamcrest.h>

#import <MKFoundationKit/NSObject+MK_AutoDescribe.h>

#import "TestDummy.h"

#define TEST_PASSES assertThatBool(YES, equalToBool(YES));
#define TEST_FAILS  STFail(@"Test not implemented.");
#define TEST_NOT_IMPLEMENTED STFail(@"Test not implemented.");