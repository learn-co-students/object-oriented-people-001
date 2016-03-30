//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by Stacy Johnson on 10/27/15.
//  Copyright © 2015 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, readonly) NSUInteger ageInYears;
@property (nonatomic, readonly) NSUInteger heightInInches;
@property (nonatomic, strong, readonly) NSMutableArray *skills;

-(instancetype)init;
-(instancetype)initWithName:(NSString  *)name ageInYears:(NSUInteger)ageInYears;
-(instancetype)initWithName:(NSString  *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches;
-(NSString *)celebrateBirthday;
-(void)learnSkillBash;
-(void)learnSkillXcode;
-(void)learnSkillObjectiveC;
-(void)learnSkillObjectOrientedProgramming;
-(void)learnSkillInterfaceBuilder;
-(BOOL)isQualifiedTutor;


@end
