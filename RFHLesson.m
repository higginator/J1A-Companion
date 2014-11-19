//
//  RFHLesson.m
//  J1A Companion
//
//  Created by Ryan Higgins on 11/18/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHLesson.h"

@implementation RFHLesson

-(instancetype)initWithLessonNumber:(int)num
{
    if (self = [super init]) {
        _lessonNumber = num;
        _lessonName = [NSString stringWithFormat:@"Lesson %d", num];
    }
    return self;
}

-(instancetype)init
{
    return [self initWithLessonNumber:1000];
}

@end
