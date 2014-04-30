# AutoDescribe

[![Twitter](https://img.shields.io/badge/contact-@MichalKonturek-blue.svg?style=flat)](http://twitter.com/michalkonturek)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/michalkonturek/AutoDescribe/blob/master/LICENSE)
[![Build Status](http://img.shields.io/travis/michalkonturek/AutoDescribe.svg?style=flat)](https://travis-ci.org/michalkonturek/AutoDescribe)

AutoDescribe is a category on NSObject allowing to query information about an instance.


## License

Source code of this project is available under the standard MIT license. Please see [the license file][LICENSE].

[PODS]:http://cocoapods.org/
[LICENSE]:https://github.com/michalkonturek/AutoDescribe/blob/master/LICENSE


## Usage

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




