//
//  RFHDefinition.h
//  J1A Companion
//
//  Created by Ryan Higgins on 11/27/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RFHDefinitions : NSObject

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSArray *wordsInHiragana;
@property (nonatomic, strong) NSArray *wordsInEnglish;


-(instancetype)initWithLessonNumber:(int)lesson;

@end
