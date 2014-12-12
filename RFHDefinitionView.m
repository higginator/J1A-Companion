//
//  RFHDefinitionView.m
//  J1A Companion
//
//  Created by Ryan Higgins on 11/27/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHDefinitionView.h"
#import "RFHAppDelegate.h"

@interface RFHDefinitionView ()

@property (nonatomic, weak) RFHAppDelegate *mainDelegate;

@end

@implementation RFHDefinitionView

-(instancetype)initWithFrame:(CGRect)frame scrollView:(UIScrollView *)scrollView navItem:(UINavigationItem *)navItem frameNumber:(int)num englishWord:(NSString *)englishWord hiraganaWord:(NSString *)hiraganaWord wordListOrder:(int)i
{
    self = [super initWithFrame:frame];
    if (self) {
        _mainDelegate = (RFHAppDelegate *)[[UIApplication sharedApplication] delegate];
        self.backgroundColor = self.mainDelegate.colorArray[2];
        self.englishWord = englishWord;
        self.hiraganaWord = hiraganaWord;
        self.frameNumber = num;
        self.scrollView = scrollView;
        self.navItem = navItem;
        self.wordListOrder = i;
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGRect aRect = CGRectMake(50 + 320 * self.frameNumber, 100, 250, 100);
    CGRect bRect = CGRectMake(50 + 320 * self.frameNumber, 300, 250, 100);
    UILabel *englishWord = [[UILabel alloc] initWithFrame:aRect];
    englishWord.text = self.englishWord;
    UILabel *hiraganaWord = [[UILabel alloc] initWithFrame:bRect];
    hiraganaWord.text = self.hiraganaWord;
    [self.scrollView addSubview:englishWord];
    [self.scrollView addSubview:hiraganaWord];

    NSString *position = [NSString stringWithFormat:@"%d/9", self.wordListOrder];
    CGRect orderRect = CGRectMake(250 + 320 * self.frameNumber, 50, 250, 100);
    UILabel *orderPosition = [[UILabel alloc] initWithFrame:orderRect];
    orderPosition.text = position;
    [self.scrollView addSubview:orderPosition];
}



@end
