# MKDebugKit

[![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)](https://github.com/michalkonturek/MKDebugKit/blob/master/LICENSE)
[![Build Platform](https://cocoapod-badges.herokuapp.com/p/MKDebugKit/badge.png)](https://github.com/michalkonturek/MKDebugKit)
[![Build Version](https://cocoapod-badges.herokuapp.com/v/MKDebugKit/badge.png)](https://github.com/michalkonturek/MKDebugKit)
[![Build Status](https://travis-ci.org/michalkonturek/MKDebugKit.png?branch=master)](https://travis-ci.org/michalkonturek/MKDebugKit)

MKDebugKit provides enhanced debuggin tools for iOS applications.

* [NSObject+MKDebugKit](#NSObject+MKDebugKit)
* [MKLog](#MKLog)


## NSObject+MKDebugKit

This category extends `NSObject` with methods for acquisition of lists of properties and methods.
It also enables objects to print their properties and values without the need of writing never-ending
`NSLog` statements.


```objc
@interface TestDummy : NSObject

+ (instancetype)create;

@property (nonatomic, strong) NSString *propertyString;
@property (nonatomic, strong) NSNumber *propertyNumber;
@property (nonatomic, assign) NSInteger propertyInteger;

- (void)method_no_parameter;
- (void)method_one_parameter:(NSString *)parameter;

@end
```

```objc
TestDummy *object = [[[self class] alloc] init];
object.propertyInteger = 1;
object.propertyNumber = @1;
object.propertyString = @"String value";
```


## MKLog

MKLog is a replacement for `NSLog`.

