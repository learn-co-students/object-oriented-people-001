//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Richard Martin on 2015-11-25.
//  Copyright © 2015 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

@property (strong, nonatomic, readwrite) NSString *name;

@property (nonatomic, readwrite) NSUInteger ageInYears;

@property (nonatomic, readwrite) NSUInteger heightInInches;

@property (strong, nonatomic, readwrite) NSMutableArray *skills;

@end

@implementation FISPerson

// default initializer

-(instancetype)init {
    self = [self initWithName:@"Richard"
                   ageInYears:55
               heightInInches:70];
    return self;
    
}

// convenience initializer

-(instancetype)initWithName:(NSString *)name
                 ageInYears:(NSUInteger)ageInYears {
    self = [self initWithName:name
                   ageInYears:ageInYears
               heightInInches:67];
    return self;
}

// designated initializer

-(instancetype)initWithName:(NSString *)name
                 ageInYears:(NSUInteger)ageInYears
             heightInInches:(NSUInteger)heightInInches {
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc]init];
    }
    
    return self;
}

-(NSString *)celebrateBirthday {
    
    // increment ageInYears by one
    
    self.ageInYears ++;
    
    // capture return of call to ordinalForInteger on self.ageInYears
    
    // NSInteger ageBirthdayBoy = self.ageInYears;
    
    NSString *ageOrdinalized = [self ordinalForInteger:self.ageInYears];
    
    // create formatted string 'HAPPY 56TH BIRTHDAY, RICHARD'
    
    NSString *birthdayMessage = [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears,  ageOrdinalized.uppercaseString, self.name.uppercaseString];
    
    // output birthday message to console
    
    NSLog(@"%@", birthdayMessage);
    
    return birthdayMessage;
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

-(void)learnSkillBash {
    
    // validate bash skill
    
    if ([self.skills containsObject:@"bash"]) {
        return;
    } else {
        [self.skills addObject:@"bash"];
    }
}

-(void)learnSkillXcode {
    
    // validate xcode skill
    
    if ([self.skills containsObject:@"Xcode"]) {
        return;
    } else {
        [self.skills addObject:@"Xcode"];
    }
}

-(void)learnSkillObjectiveC {
    
    // validate objective-c skill
    
    if ([self.skills containsObject:@"Objective-C"]) {
        return;
    } else {
        [self.skills addObject:@"Objective-C"];
    }
}

-(void)learnSkillObjectOrientedProgramming {
    
    // validate oop skill
    
    if ([self.skills containsObject:@"Object-Oriented Programming"]) {
        return;
    } else {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
}

-(void)learnSkillInterfaceBuilder {
    
    // validate interface builder skill
    
    if ([self.skills containsObject:@"Interface Builder"]) {
        return;
    } else {
        [self.skills addObject:@"Interface Builder"];
    }
}

-(BOOL)isQualifiedTutor {
    
    NSUInteger skillsNumber = [self.skills count];
    
    if (skillsNumber >= 4) {
        return YES;
    } else {
        return NO;
    }
    
}


@end
