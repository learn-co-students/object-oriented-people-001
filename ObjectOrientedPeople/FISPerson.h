//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by John Richardson on 5/11/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property (nonatomic, readonly) NSString *name;

@property (nonatomic, readonly) NSUInteger ageInYears;

@property (nonatomic, readonly) NSUInteger heightInInches;

@property (nonatomic, readonly) NSMutableArray *skills;

- (instancetype)init;

- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)years;

- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)years
              heightInInches:(NSUInteger)inches;

- (NSString *)celebrateBirthday;

- (void)learnSkillBash;

- (void)learnSkillXcode;

- (void)learnSkillObjectiveC;

- (void)learnSkillObjectOrientedProgramming;

- (void)learnSkillInterfaceBuilder;

- (BOOL)isQualifiedTutor;

@end
