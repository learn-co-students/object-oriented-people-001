//
//  Person.h
//  ObjectOrientedPeople
//
//  Created by Joshua Motley on 8/18/15.
//  Copyright (c) 2015 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSNumber *height;
@property (strong, nonatomic) NSNumber *age;
@property (strong, nonatomic) NSString *name;
@property (nonatomic) BOOL *isFemale;
@property (strong, nonatomic) NSMutableArray *friends;

-(NSNumber *)grow;
-(void)addFriends:(NSMutableArray *)friends;
-(NSString *)generatePartyList;
-(BOOL)removeFriend:(Person *)friend;
-(NSArray *)removeFriends:(NSMutableArray *)friends;
-(Person *)initWithName:(NSString *)name;
- (float)randomFloatBetween:(float)smallNumber and:(float)bigNumber;

@end
