//
//  RFHLessonsNavigatonViewController.m
//  J1A Companion
//
//  Created by Ryan Higgins on 11/22/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHLessonsNavigatonViewController.h"
#import <ChameleonFramework/Chameleon.h>

@interface RFHLessonsNavigatonViewController ()

@end

@implementation RFHLessonsNavigatonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        //self.navigationBar.barTintColor = [UIColor flatOrangeColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(UIStatusBarStyle)preferredStatusBarStyle {
    return StatusBarContrastColorOf((UIColor *)[UIColor flatGreenColor]);
}

@end
