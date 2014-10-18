//
//  Animal.m
//  ArrayHomeWork
//
//  Created by gressmc on 18/10/14.
//  Copyright (c) 2014 gressmc. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = @"Жывотнае)";
    }
    return self;
}
-(void) movement{
    NSLog(@"The common animal does nothing.");
}


@end
