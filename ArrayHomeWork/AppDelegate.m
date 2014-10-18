//
//  AppDelegate.m
//  ArrayHomeWork
//
//  Created by gressmc on 18/10/14.
//  Copyright (c) 2014 gressmc. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"
#import "Runner.h"
#import "Diver.h"
#import "Biker.h"
#import "PhotoModel.h"
#import "Animal.h"
#import "Snake.h"
#import "Pig.h"
#import "Rabbit.h"

@interface AppDelegate ()
@end
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
#pragma mark - Human
    
    NSLog(@"||||||||||||||||||||||");
    NSLog(@"Блок только людей");
    NSLog(@"||||||||||||||||||||||");
    NSLog(@"--------------------");

    //Создаем наших спортсменов
    Human* fatSlacker = [Human new];
    Runner* runner = [Runner new];
    Diver* diver = [Diver new];
    Biker* biker =[Biker new];
    PhotoModel* model = [PhotoModel new];
    PhotoModel* model2 = [PhotoModel new];
    
    //Обзываем именами
    fatSlacker.name = @"Foma";
    runner.name = @"Forrest";
    biker.name = @"Lance";
    diver.name = @"Ivan";
    model.name = @"Veronichka";
    model2.name = @"Anna";
    
    //остальные хар-ки
    fatSlacker.height = 1.5f;
    runner.height = 1.75f;
    biker.height = 1.8f;
    diver.height = 1.78f;
    model.height = 1.81f;
    model.height = 1.76f;
    
    fatSlacker.weight = 120.f;
    runner.weight = 78.f;
    biker.weight = 83.5f;
    diver.weight = 75.7f;
    model.weight = 58.f;
    model2.weight = 54.f;
    
    fatSlacker.gender = Female;
    runner.gender = Male;
    biker.gender = Male;
    diver.gender = Male;
    model.gender = Female;
    model2.gender = Female;
    
    model.age = 24;
    model.journal = @"ELLE";
    model2.age = 21;
    model2.journal = @"Glamour";
    
    NSArray* arrayHuman = @[fatSlacker,model2,runner,biker,diver,model];

    for (Human* human in arrayHuman) {
        NSString* gender = human.gender ? @"woman" : @"Man";
        [human movement];
        NSLog(@"height=%.2fm weight=%.1fkg",human.height,human.weight);
        NSLog(@"And it was a %@",gender);
        if ([human isKindOfClass:[PhotoModel class]]) {
            PhotoModel* model = (PhotoModel*)human;
            NSLog(@"Моделька на обложке %@ в возрасте %lu", model.journal, model.age);
        }
        NSLog(@"--------------------");
    }
    
#pragma mark - Animal.8.9
    
    NSLog(@"||||||||||||||||||||||");
    NSLog(@"Блок людей с животными - уровень МАСТЕР");
    NSLog(@"||||||||||||||||||||||");
    NSLog(@"--------------------");
    
    //Создаем наших животных
    Animal* animal = [Animal new];
    Snake* snake = [Snake new];
    Rabbit* rabbit = [Rabbit new];
    Pig* pig = [Pig new];
    
    animal.name = @"Animal";
    snake.name = @"Snake Kaa";
    rabbit.name = @"Krolik";
    pig.name = @"Funtik";
    
    animal.color = @"brownColor";
    snake.color = @"greenColor";
    rabbit.color = @"grayColor";
    pig.color = @"pinkColor";
    
#pragma mark - Master.10.11
    
    NSArray* arrayAll = @[fatSlacker,pig,runner,biker,model,animal,biker,snake,diver,rabbit,model2];
    [self printArray:arrayAll];
    
    
#pragma mark - Star.12.13
    
    NSLog(@"||||||||||||||||||||||");
    NSLog(@"Блок людей с животными - уровень ЗВЕЗДА");
    NSLog(@"||||||||||||||||||||||");
    NSLog(@"--------------------");
    
    NSArray* arrayAnimal = @[animal,snake,rabbit,pig];
    NSUInteger countH = [arrayHuman count];
    NSUInteger countA = [arrayAnimal count];
    NSUInteger countAll = countA>countH ? countA : countH;
    // NSUInteger countAll = MAX([arrayHuman count], [arrayAnimal count]);
    NSMutableArray* array = [NSMutableArray new];
    for (int i=0; i<countAll; i++) {
        if (i<[arrayHuman count]) {
            [array addObject:[arrayHuman objectAtIndex:i]];
        }
        if (i<[arrayAnimal count]) {
            [array addObject:[arrayAnimal objectAtIndex:i]];
        }
    }
    [self printArray:array];
    
#pragma mark - Superman.14.15.16.17
    
    NSLog(@"||||||||||||||||||||||");
    NSLog(@"Блок людей с животными - уровень Супермен");
    NSLog(@"||||||||||||||||||||||");
    NSLog(@"--------------------");
    
    NSSortDescriptor *sortDescriptorOne = [[NSSortDescriptor alloc] initWithKey: @"type" ascending: NO];
    NSSortDescriptor *sortDescriptorTwo = [[NSSortDescriptor alloc] initWithKey: @"name" ascending: YES];
    NSArray *sortedArrayWithPeoplesAndAnimals = [array sortedArrayUsingDescriptors:[NSArray arrayWithObjects:sortDescriptorOne,sortDescriptorTwo, nil]];
    [self printArray:sortedArrayWithPeoplesAndAnimals];
    return YES;
}


-(void)printArray:(NSArray*)array{
    for (int i=0; i<[array  count]; i++) {
        Human* human = [array objectAtIndex:i];
        Animal* animal = [array objectAtIndex:i];
        if ([human isKindOfClass:[Human class]]) {
            NSLog(@"%@", human.type);
            NSString* gender = human.gender ? @"woman" : @"Man";
            [human movement];
            NSLog(@"height=%.2fm weight=%.1fkg",human.height,human.weight);
            NSLog(@"And it was a %@",gender);
            
            if ([human isKindOfClass:[PhotoModel class]]) {
                PhotoModel* model = (PhotoModel*)human;
                NSLog(@"Моделька на обложке %@ в возрасте %lu", model.journal, model.age);
            }
            NSLog(@"--------------------");
        }
        if ([animal isKindOfClass:[Animal class]]) {
            NSLog(@"%@",animal.type);
            [animal movement];
            NSLog(@"%@ - %@",animal.name,animal.color);
            NSLog(@"--------------------");
        }
    }
}

@end
