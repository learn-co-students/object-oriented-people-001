//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by John Richardson on 5/11/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

@property (nonatomic, readwrite) NSString *name;

@property (nonatomic, readwrite) NSUInteger ageInYears;

@property (nonatomic, readwrite) NSUInteger heightInInches;

@property (nonatomic, readwrite) NSMutableArray *skills;

@end

@implementation FISPerson

- (instancetype)init {
    self = [self initWithName:@"John"
              ageInYears:27
              heightInInches:72];
    self.skills = [[NSMutableArray alloc] init];
    return self;
}


- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears {
    self = [self initWithName:name
                   ageInYears:ageInYears
               heightInInches:72];
    self.skills = [[NSMutableArray alloc] init];
    return self;
}

- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears
              heightInInches:(NSUInteger)heightInInches {
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
    }
    self.skills = [[NSMutableArray alloc] init];
    return self;
}

- (NSString *)celebrateBirthday {
    self.ageInYears = self.ageInYears + 1;
    NSString *ordinalReturn = [self ordinalForInteger:self.ageInYears];
    NSString *bdayMessege = [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, [ordinalReturn uppercaseString], [self.name uppercaseString]];
    NSLog(@"%@", bdayMessege);
    return bdayMessege;
}

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

- (void)addSkill:(NSString *)skill {
    if(![self.skills containsObject:skill]) {
        [self.skills addObject:skill];
    }
}

- (void)learnSkillBash {
    [self addSkill:@"bash"];
}

- (void)learnSkillXcode {
    [self addSkill:@"Xcode"];
}

- (void)learnSkillObjectiveC {
    [self addSkill:@"Objective-C"];
}

- (void)learnSkillObjectOrientedProgramming {
    [self addSkill:@"Object-Oriented Programming"];
}

- (void)learnSkillInterfaceBuilder {
    [self addSkill:@"Interface Builder"];
}

- (BOOL)isQualifiedTutor {
    if ([self.skills count] > 3) {
        return YES;
    } else {
        return NO;
    }
}

@end
