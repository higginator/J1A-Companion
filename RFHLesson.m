//
//  RFHLesson.m
//  J1A Companion
//
//  Created by Ryan Higgins on 11/18/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHLesson.h"
#import "RFHVocabularyViewController.h"
#import "RFHVocabulary.h"

@interface RFHLesson ()

@property (nonatomic, strong) NSMutableArray *privateItems;

@end


@implementation RFHLesson

-(instancetype)initWithLessonNumber:(int)num
{
    if (self = [super init]) {
        _lessonNumber = num;
        _lessonName = [NSString stringWithFormat:@"Lesson %d", num];
        _items = [[NSArray alloc] init];
        self.privateItems = [[NSMutableArray alloc] init];
        [self createItems];
    }
    return self;
}

-(instancetype)init
{
    return [self initWithLessonNumber:1000];
}

-(void)createItems
{
    RFHVocabulary *vocab = [[RFHVocabulary alloc] initWithLessonNumber:self.lessonNumber];
    RFHVocabularyViewController *vocabVC = [[RFHVocabularyViewController alloc] initWithVocab:vocab];
    [self.privateItems addObject:vocabVC];
}

-(NSArray *)items
{
    return self.privateItems;
}

@end
