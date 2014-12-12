//
//  RFHDefinitionsViewController.h
//  J1A Companion
//
//  Created by Ryan Higgins on 11/27/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RFHDefinitions.h"

@interface RFHDefinitionsViewController : UITableViewController <UIGestureRecognizerDelegate>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) RFHDefinitions *definitions;

-(instancetype)initWithDefinitions:(RFHDefinitions *)definitions;

@end
