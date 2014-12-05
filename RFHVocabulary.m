//
//  RFHVocabulary.m
//  J1A Companion
//
//  Created by Ryan Higgins on 11/22/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHVocabulary.h"
#import "RFHDefinitions.h"
#import "RFHDefinitionsViewController.h"

@interface RFHVocabulary ()

@property (nonatomic, strong) NSMutableArray *privateItems;

@end

@implementation RFHVocabulary

-(instancetype)init
{
    @throw [NSException exceptionWithName:@"wrong initializer" reason:@"use -initWithLessonNumber" userInfo:nil];
}

-(instancetype)initWithLessonNumber:(int)lesson
{
    if (self = [super init]) {
        _name = @"Vocabulary";
        _items = [[NSArray alloc] init];
        _privateItems = [[NSMutableArray alloc] init];
        [self createItemsWithLessonNumber:lesson];
    }
    return self;
}

-(void)createItemsWithLessonNumber:(int)lesson
{
    RFHDefinitions *definitions = [[RFHDefinitions alloc] initWithLessonNumber:lesson];
    RFHDefinitionsViewController *definitionVC = [[RFHDefinitionsViewController alloc] initWithDefinitions:definitions];
    [self.privateItems addObject:definitionVC];
}

-(NSArray *)items
{
    return self.privateItems;
}

@end
