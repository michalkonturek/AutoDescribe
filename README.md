# AutoDescribe

[![Twitter](https://img.shields.io/badge/contact-@MichalKonturek-blue.svg?style=flat)](http://twitter.com/michalkonturek)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/michalkonturek/AutoDescribe/blob/master/LICENSE)
[![Build Status](http://img.shields.io/travis/michalkonturek/AutoDescribe.svg?style=flat)](https://travis-ci.org/michalkonturek/AutoDescribe)

`AutoDescribe` is a category on `NSObject` which allows you to query information about an instance.

This category extends `NSObject` with methods for acquisition of lists of properties and methods.
It also enables objects to print their properties and values without the need of writing never-ending `NSLog` statements.


## License

Source code of this project is available under the standard MIT license. Please see [the license file][LICENSE].

[PODS]:http://cocoapods.org/
[LICENSE]:https://github.com/michalkonturek/AutoDescribe/blob/master/LICENSE


## Installation

The source files have been moved to [`MKFoundationKit`][MKF] pod. 

[MKF]:https://github.com/michalkonturek/mkfoundationkit

1. Add to your Podfile:

	```
	pod 'MKFoundationKit/AutoDescribe'
	```

2. Import public header:

	```
	#import <MKFoundationKit/NSObject+MK_AutoDescribe.h>
	```


## API

```objc
+ (NSArray *)mk_propertyList;
+ (NSArray *)mk_propertyList:(Class)clazz;

+ (NSArray *)mk_methodListOnly;
+ (NSArray *)mk_methodListOnly:(Class)clazz;

+ (NSArray *)mk_methodList;
+ (NSArray *)mk_methodList:(Class)clazz;

- (void)mk_printObject;
- (void)mk_printObjectKeys:(NSArray *)keys;

- (void)mk_printObjectMethods;
- (void)mk_printObjectMethodsOnly;

- (NSString *)mk_className;
```


## Contributing

1. Fork it.
2. Create your feature branch (`git checkout -b new-feature`).
3. Commit your changes (`git commit -am 'Added new-feature'`).
4. Push to the branch (`git push origin new-feature`).
5. Create new Pull Request.
