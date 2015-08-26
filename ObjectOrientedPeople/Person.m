//
//  Person.m
//  ObjectOrientedPeople
//
//  Created by Priyansh Chordia on 8/25/15.
//  Copyright (c) 2015 al-tyus.com. All rights reserved.
//

#import "Person.h"

@implementation Person

#define ARC4RANDOM_MAX 0x100000000
- (CGFloat)randomFloatBetweenNumber:(CGFloat)minRange andNumber:(CGFloat)maxRange
{
    return ((float)arc4random() / ARC4RANDOM_MAX)
    * (maxRange - minRange)
    + minRange;
}

- (NSNumber *)grow {
    
    Person *myPerson = [[Person alloc] init];
    NSInteger numYears = myPerson.age.integerValue;
    BOOL gender = myPerson.isFemale;
    CGFloat growth = 0;
    
    if (numYears < 11 && gender) {
        growth = [self randomFloatBetweenNumber:0.0 andNumber:1.0];
    }
    if (numYears >= 11 && numYears <= 15 && gender) {
        growth = [self randomFloatBetweenNumber:0.5 andNumber:2.0];
    }
    if (numYears < 12 && !gender) {
        growth = [self randomFloatBetweenNumber:0.0 andNumber:1.0];
    }
    if (numYears >= 12 && numYears <=16 && !gender) {
        growth = [self randomFloatBetweenNumber:0.5 andNumber:3.5];
    }
    
    NSNumber *newNum = [NSNumber numberWithFloat:growth];
    return newNum;
}
- (void)addFriends:(NSArray *)friends {
    [friends arrayByAddingObject:self.friends];
    
}

- (NSString *)generatePartyList {
    NSString * result = [[self.friends valueForKey:@"description"] componentsJoinedByString:@""];
    return result;
}
- (BOOL)removeFriend: (Person *)friend {
    
    BOOL answer;
    
    if ([self.friends containsObject:friend]) {
        answer = YES;
    }
    else {
        answer = NO;
    }
    
    return answer;
    
}





@end
