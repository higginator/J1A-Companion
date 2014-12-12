//
//  RFHDefinitionView.h
//  J1A Companion
//
//  Created by Ryan Higgins on 11/27/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RFHDefinitionView : UIView <UIGestureRecognizerDelegate>

@property (nonatomic, copy) NSString *englishWord;
@property (nonatomic, copy) NSString *hiraganaWord;
@property (nonatomic) int frameNumber;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, weak) UINavigationItem *navItem;
@property (nonatomic) int wordListOrder;


-(instancetype)initWithFrame:(CGRect)frame scrollView:(UIScrollView *)scrollView navItem:(UINavigationItem *)navItem frameNumber:(int)num englishWord:(NSString *)englishWord hiraganaWord:(NSString *)hiraganaWord wordListOrder:(int)i;
@end
