//
//  RFHVocabularyViewController.h
//  J1A Companion
//
//  Created by Ryan Higgins on 11/22/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RFHVocabulary.h"

@interface RFHVocabularyViewController : UITableViewController

@property (nonatomic, strong) RFHVocabulary *vocab;
@property (nonatomic, copy) NSString *name;

-(instancetype)initWithVocab:(RFHVocabulary *)vocab;

@end
