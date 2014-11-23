//
//  RFHLesson.h
//  J1A Companion
//
//  Created by Ryan Higgins on 11/18/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RFHVocabulary.h"

@interface RFHLesson : NSObject

@property (nonatomic, copy) NSString *lessonName;
@property (nonatomic) int lessonNumber;
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) RFHVocabulary *vocab;

-(instancetype)initWithLessonNumber:(int)num;


@end
