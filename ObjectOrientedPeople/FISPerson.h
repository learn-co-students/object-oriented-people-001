//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by Alex J Lee on 10/24/15.
//  Copyright (c) 2015 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property(strong, nonatomic, readonly)NSString *name;
@property(nonatomic, readonly)NSUInteger ageInYears;
@property(nonatomic, readonly)NSUInteger heightInInches;
@property(strong, nonatomic, readonly)NSMutableArray *skills;

- (instancetype)init;

// convenience initializer
- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears;

// designated initializer
- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears
              heightInInches:(NSUInteger)heightInInches;

- (NSString *)celebrateBirthday;
- (void)learnSkillBash;
- (void)learnSkillXcode;
- (void)learnSkillObjectiveC;
- (void)learnSkillObjectOrientedProgramming;
- (void)learnSkillInterfaceBuilder;
- (BOOL)isQualifiedTutor;

@end
