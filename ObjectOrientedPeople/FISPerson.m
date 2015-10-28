//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Stacy Johnson on 10/27/15.
//  Copyright © 2015 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson()

@property (nonatomic, strong, readwrite) NSString *name;
@property (nonatomic, readwrite) NSUInteger ageInYears;
@property (nonatomic, readwrite) NSUInteger heightInInches;
@property (nonatomic, strong, readwrite) NSMutableArray *skills;

@end

@implementation FISPerson


- (instancetype)initWithName:(NSString  *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches
{
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc] init];
    }
    return self;
}

- (instancetype)initWithName:(NSString  *)name ageInYears:(NSUInteger)ageInYears
{
    self = [self initWithName:name ageInYears:ageInYears heightInInches:67];
    return self;
}

- (instancetype)init
{
    self = [self initWithName:@"Stacy" ageInYears:30];
    return self;
}


-(NSString *)celebrateBirthday {
    
    self.ageInYears = self.ageInYears + 1;
    NSString *ordinal = [self ordinalForInteger:self.ageInYears];
    NSString *happyBirthday = [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, [ordinal uppercaseString], [self.name uppercaseString]];
    
    return happyBirthday;
}

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

//helper method
-(void)learnSkill:(NSString *)skill {
    if (![self.skills containsObject:skill]) {
        [self.skills addObject:skill];
    }
}

-(void)learnSkillBash {
    NSString *skill = @"bash";
    [self learnSkill:skill];
}

-(void)learnSkillXcode {
    NSString *skill = @"Xcode";
    [self learnSkill:skill];
}

-(void)learnSkillObjectiveC {
    NSString *skill = @"Objective-C";
    [self learnSkill:skill];
    
}

-(void)learnSkillObjectOrientedProgramming {
    NSString *skill = @"Object-Oriented Programming";
    [self learnSkill:skill];
}

-(void)learnSkillInterfaceBuilder {
    NSString *skill = @"Interface Builder";
    [self learnSkill:skill];
}

-(BOOL)isQualifiedTutor {
    
    if ([self.skills count] >= 4) {
        return YES;
    }
    
    return NO;
}


@end
