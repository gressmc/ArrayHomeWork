//
//  Human.h
//  ArrayHomeWork
//
//  Created by gressmc on 18/10/14.
//  Copyright (c) 2014 gressmc. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    Male,
    Female
}Gender;


@interface Human : NSObject

@property(strong,nonatomic)NSString* name;
@property(strong,nonatomic)NSString* type;
@property(assign,nonatomic)CGFloat height;
@property(assign,nonatomic)CGFloat weight;
@property(assign,nonatomic)Gender gender;

-(void) movement;

@end
