//
//  Person.h
//  ObjectOrientedPeople
//
//  Created by Priyansh Chordia on 8/25/15.
//  Copyright (c) 2015 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


@property (strong, nonatomic) NSNumber *height;
@property (strong, nonatomic) NSNumber *age;
@property (strong, nonatomic) NSString *name;
@property (nonatomic) BOOL isFemale;
@property (strong, nonatomic) NSMutableArray *friends;

- (CGFloat)randomFloatBetweenNumber:(CGFloat)minRange andNumber:(CGFloat)maxRange;
- (NSNumber *)grow;
- (void)addFriends:(NSArray *)friends;
- (NSString *)generatePartyList;
- (BOOL)removeFriend: (Person *)friend;





@end
