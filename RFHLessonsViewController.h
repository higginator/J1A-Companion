//
//  RFHLessonsViewController.h
//  J1A Companion
//
//  Created by Ryan Higgins on 11/18/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RFHLesson.h"

@interface RFHLessonsViewController : UITableViewController

@property (nonatomic, strong) RFHLesson *lesson;

-(instancetype)initWithLesson:(RFHLesson *)lesson;
@end
