//
//  Animal.h
//  ArrayHomeWork
//
//  Created by gressmc on 18/10/14.
//  Copyright (c) 2014 gressmc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property(strong,nonatomic) NSString* name;
@property(strong,nonatomic) NSString* type;
@property(strong,nonatomic) NSString* color;

-(void) movement;

@end
