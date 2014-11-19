//
//  RFHLessonStore.h
//  J1A Companion
//
//  Created by Ryan Higgins on 11/18/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RFHLessonStore : NSObject

@property (nonatomic, readonly) NSArray *allLessons;

+(instancetype)sharedStore;

@end
