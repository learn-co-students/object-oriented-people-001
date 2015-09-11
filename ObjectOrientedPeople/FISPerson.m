//
//  FISPerson.m
//  
//
//  Created by Wo Jun Feng on 9/11/15.
//
//

#import "FISPerson.h"

@interface FISPerson ()

@property (strong, nonatomic, readwrite)NSString *name;
@property (nonatomic, readwrite)NSUInteger ageInYears;
@property (nonatomic, readwrite)NSUInteger heightInInches;
@property (strong, nonatomic, readwrite)NSMutableArray *skills;

@end

@implementation FISPerson

- (instancetype)init{
    self = [self initWithName:@"Wo Jun"
                   ageInYears:26
               heightInInches:80];
    return self;
};

- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears{
    self = [self initWithName:name
                   ageInYears:ageInYears
               heightInInches:67];
    
    return self;
};

- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears
              heightInInches:(NSUInteger)heightInInches{
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc] init];
    }
    return self;
};

- (NSString *)celebrateBirthday{
    self.ageInYears += 1;
    NSString *ordinal = [self ordinalForInteger:self.ageInYears];
    
    NSString *celebrateBirthday = [[NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!",self.ageInYears, ordinal,self.name] uppercaseString];
    
    NSLog(@"%@", celebrateBirthday);
    
    return celebrateBirthday;
};

// helper method
- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}

- (void)learnSkillBash{
    if (![self.skills containsObject:@"bash"]) {
        [self.skills addObject:@"bash"];
    }
    
};
- (void)learnSkillXcode{
    if (![self.skills containsObject:@"Xcode"]) {
        [self.skills addObject:@"Xcode"];
    }
};
- (void)learnSkillObjectiveC{
    if (![self.skills containsObject:@"Objective-C"]) {
        [self.skills addObject:@"Objective-C"];
    }
};
- (void)learnSkillObjectOrientedProgramming{
    if (![self.skills containsObject:@"Object-Oriented Programming"]) {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
};
- (void)learnSkillInterfaceBuilder{
    if (![self.skills containsObject:@"Interface Builder"]) {
        [self.skills addObject:@"Interface Builder"];
    }
};
- (BOOL)isQualifiedTutor{
    if (self.skills.count >= 4) {
        return YES;
    }
    return NO;
};

@end
