/*
  Fake data generation for obj-c
  A start of a port of a port
  TODO: Reference files
  TODO: Conditional ARC?
  TODO: Localization
 */

@interface Faker : NSObject;

// People names
+ (NSString *)firstName;
+ (NSString *)middleName;
+ (NSString *)lastName;
+ (NSString *)fullName;

// Company
+ (NSString *)company;
+ (NSString *)website;

// Phone
+ (NSString *)phoneNumber;
+ (NSString *)email;

// Misc
+ (NSString *)exultation;
+ (NSString *)uuid;

@end
