//
//  RFHLessonStore.m
//  J1A Companion
//
//  Created by Ryan Higgins on 11/18/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHLessonStore.h"
#import "RFHLessonsViewController.h"
#import "RFHLesson.h"

@interface RFHLessonStore ()

@property (nonatomic) NSMutableArray *privateLessonVCs;

@end


@implementation RFHLessonStore

#pragma mark - Initialization methods

+(instancetype)sharedStore
{
    static RFHLessonStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}

-(instancetype)init
{
    @throw [NSException exceptionWithName:@"Wrong initializer" reason:@"use +(sharedStore)" userInfo:nil];
}

-(instancetype)initPrivate
{
    if (self=[super init]) {
        _privateLessonVCs = [[NSMutableArray alloc] init];
        [self createLessons];
    }
    return self;
}

#pragma mark - Instantiation Method

-(void)createLessons
{
    for (int i = 0; i < 14; i++) {
        RFHLesson *lesson = [[RFHLesson alloc] initWithLessonNumber:i+1];
        RFHLessonsViewController *lessonVC = [[RFHLessonsViewController alloc] initWithLesson:lesson];
        [self.privateLessonVCs addObject:lessonVC];
    }
}


#pragma mark - Accessor Methods

-(NSArray *)allLessonVCs
{
    return self.privateLessonVCs;
}

@end
