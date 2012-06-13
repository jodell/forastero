#import "Faker.h"
#import "NSArray+JORandom.h"


static NSArray *_allFirstNames;
static NSArray *_allLastNames;
static NSArray *_allCompanyNames;
static NSArray *_allExultations;

@interface Faker()

+ (NSArray *)allFirstNames;
+ (NSArray *)allLastNames;
+ (NSArray *)allCompanyNames;
+ (NSArray *)allExultations;

@end

@implementation Faker

+ (NSString *)firstName {
  return [[self allFirstNames] randomObject];
}

+ (NSString *)middleName {
  return [[self allFirstNames] randomObject];
}

+ (NSString *)lastName {
  return [[self allLastNames] randomObject];
}

+ (NSString *)fullName {
  return [NSString stringWithFormat:@"%@ %@", [self firstName], [self lastName]];
}

+ (NSString *)company {
  return [[self allCompanyNames] randomObject];
}

+ (NSString *)website {
  return [NSString stringWithFormat:@"%@.test", [Faker company]];
}

+ (NSString *)phoneNumber {
  return [NSString stringWithFormat:@"%i%i%i", arc4random() % 899 + 100, arc4random() % 899 + 100, arc4random() % 8999 + 1000];
}

+ (NSString *)email {
  return [NSString stringWithFormat:@"%@@%@.%@", [Faker firstName], [Faker company], @"test"];
}

+ (NSString *)exultation {
  return [[self allExultations] randomObject];
}

+ (NSString *)uuid {
  CFUUIDRef uuidObj = CFUUIDCreate(nil);
  NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuidObj);
  CFRelease(uuidObj);
  return uuidString;
}

// TODO: These should all pull from a reference source.
+ (NSArray *)allFirstNames {
  if (!_allFirstNames) {
    _allFirstNames = [NSArray arrayWithObjects:@"James", @"Zach", @"Tori",
                      @"Lupe", @"Josh", @"Tom", @"Johann", nil];
  }
  return _allFirstNames;
}

+ (NSArray *)allLastNames {
  if (!_allLastNames) {
    _allLastNames = [NSArray arrayWithObjects:@"Keenan", @"Davis", @"Amos",
                     @"Fiasco", @"Rocha", @"Bangalter", nil];
  }
  return _allLastNames;
}

+ (NSArray *)allCompanyNames {
  if (!_allCompanyNames) {
    _allCompanyNames = [NSArray arrayWithObjects:@"awesomemedia", @"pubpub",
                        @"kohls", @"encom", @"2cube", @"mcdonalds", nil];
  }
  return _allCompanyNames;
}

+ (NSArray *)allExultations {
  if (!_allExultations) {
    _allExultations = [NSArray arrayWithObjects:@"Awesome", @"Amazing",
                        @"Super", @"Radical", @"Killer", @"Fantastic", nil];
  }
  return _allExultations;
}

@end
