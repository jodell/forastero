#import <Foundation/Foundation.h>


@interface NSArray(JORandom)

// Returns a random object
- (id)randomObject;

@end

@implementation NSArray(JORandom)

- (id)randomObject {
  return [self objectAtIndex:(arc4random() % [self count])];
}

@end
