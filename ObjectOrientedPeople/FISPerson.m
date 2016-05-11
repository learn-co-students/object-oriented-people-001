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
    self = [super init];
    return self;
}


- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)years {
    self = [super init];
    return self;
}

- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)years
              heightInInches:(NSUInteger)inches {
    self = [super init];
    return self;
}

- (NSString *)celebrateBirthday {
    return nil;
}

- (void)learnSkillBash {
    
}

- (void)learnSkillXcode {
    
}

- (void)learnSkillObjectiveC {
    
}

- (void)learnSkillObjectOrientedProgramming {
    
}

- (void)learnSkillInterfaceBuilder {
    
}

- (BOOL)isQualifiedTutor {
    return NO;
}

@end
