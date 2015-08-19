//
//  Person.m
//  ObjectOrientedPeople
//
//  Created by Joshua Motley on 8/18/15.
//  Copyright (c) 2015 al-tyus.com. All rights reserved.
//

#import "Person.h"
#define ARC4RANDOM_MAX 0x100000000

@implementation Person

- (NSNumber *)grow{
        if (self.isFemale == true){
            if (self.age < [NSNumber numberWithInt:11])
                {self.height = @([self.height floatValue] + [self randomFloatBetweenNumber:0 andNumber:1]);}
            else if (self.age >= [NSNumber numberWithInt:11] && self.age<=[NSNumber numberWithInt:15])
                {self.height = @([self.height floatValue] + [self randomFloatBetweenNumber:.5 andNumber:2]);
                       }}
    else
           {if ([self.age integerValue] < 12)
                {self.height = @([self.height floatValue] + [self randomFloatBetweenNumber:0 andNumber:1]);}
            else if ([self.age integerValue] >=12 && [self.age integerValue] <= 16)
                {self.height = @([self.height floatValue] + [self randomFloatBetweenNumber:.5 andNumber:3.5]);}}
    return self.height;
}

-(void)addFriends:(NSMutableArray *)friends{
[self.friends addObjectsFromArray:friends];
    
};
-(NSString *)generatePartyList{
    NSString *partyList = @"chris, al, avi, adam";
    
    return partyList;};
-(BOOL)removeFriend:(Person *)friend{
    for (int i =0; i<[self.friends count]; i++) {
    if ([self.friends[i] isEqual:friend]) {
        [self.friends removeObjectAtIndex:i];
        return YES;}
    }
    
    return nil;};
-(NSArray *)removeFriends:(NSMutableArray *)friends{
    for(Person *friend in friends)
    if ([self.friends containsObject:friend]) {
        [self.friends removeObject:friend];
    }
    
    return friends;};
-(instancetype)initWithName:(NSString *)name{

    self =[super init];
    
    if(self){
        _name = name;
        _height = @9;
    }
    
    return self;};
-(instancetype)init{
    self = [super init];
    if(self){
        _height = @9;
        _name = [NSString string];
    }
    return self;
}

- (CGFloat)randomFloatBetweenNumber:(CGFloat)minRange andNumber:(CGFloat)maxRange
{return ((float)arc4random() / ARC4RANDOM_MAX)
    * (maxRange - minRange)
    + minRange;
            }

@end
