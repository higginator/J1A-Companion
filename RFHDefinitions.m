//
//  RFHDefinition.m
//  J1A Companion
//
//  Created by Ryan Higgins on 11/27/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHDefinitions.h"

@interface RFHDefinitions ()

@property (nonatomic, strong) NSMutableArray *privateWordsInEnglish;
@property (nonatomic, strong) NSMutableArray *privateWordsInHiragana;

@end

@implementation RFHDefinitions

-(instancetype)init
{
    @throw [NSException exceptionWithName:@"wrong initializer" reason:@"use -initWithLessonNumber" userInfo:nil];
}

-(instancetype)initWithLessonNumber:(int)lesson
{
    if (self = [super init]) {
        _items = [[NSArray alloc] init];
        _name = @"Definitions";
        _wordsInEnglish = [[NSArray alloc] init];
        _wordsInHiragana = [[NSArray alloc] init];
        _privateWordsInEnglish = [[NSMutableArray alloc] init];
        _privateWordsInHiragana = [[NSMutableArray alloc] init];
        [self createItemsUsingLessonNumber:lesson];
    }
    return self;
}

#pragma mark - Accessor Methods

-(NSArray *)wordsInEnglish
{
    return self.privateWordsInEnglish;
}

-(NSArray *)wordsInHiragana
{
    return self.privateWordsInHiragana;
}

#pragma mark - Populating Vocabulary Lists

-(void)createItemsUsingLessonNumber:(int)lesson
{
    if (lesson == 1) {
        [self createLesson1Items];
    } else if (lesson == 2) {
        [self createLesson2Items];
    } else if (lesson == 3) {
        [self createLesson3Items];
    } else if (lesson == 4) {
        [self createLesson4Items];
    } else if (lesson == 5) {
        [self createLesson5Items];
    } else if (lesson == 6) {
        [self createLesson6Items];
    } else if (lesson == 7) {
        [self createLesson7Items];
    } else if (lesson == 8) {
        [self createLesson8Items];
    } else if (lesson == 9) {
        [self createLesson9Items];
    } else if (lesson == 10) {
        [self createLesson10Items];
    } else if (lesson == 11) {
        [self createLesson11Items];
    } else if (lesson == 12) {
        [self createLesson12Items];
    } else if (lesson == 13) {
        [self createLesson13Items];
    } else if (lesson == 14) {
        [self createLesson14Items];
    }
}

-(void)createLesson1Items
{
    self.privateWordsInEnglish = [[NSMutableArray alloc] initWithArray:@[@"name (respectful)", @"student", @"major (respectful)", @"teacher", @"major", @"name", @"Japanese language", @"hiragana", @"I/me"]];
    self.privateWordsInHiragana = [[NSMutableArray alloc] initWithArray:@[@"おなまえ",　@"がくせい",　@"ごせんもん",　@"せんせい",　@"せんもん",　@"なまえ",　@"にほんご",　@"ひらがな",　@"わたし"]];
}

-(void)createLesson2Items
{
    
}

-(void)createLesson3Items
{
    
}

-(void)createLesson4Items
{
    
}
-(void)createLesson5Items
{
    
}

-(void)createLesson6Items
{
    
}

-(void)createLesson7Items
{
    
}

-(void)createLesson8Items
{
    
}

-(void)createLesson9Items
{
    
}

-(void)createLesson10Items
{
    
}

-(void)createLesson11Items
{
    
}

-(void)createLesson12Items
{
    
}

-(void)createLesson13Items
{
    
}

-(void)createLesson14Items
{
    
}

@end
