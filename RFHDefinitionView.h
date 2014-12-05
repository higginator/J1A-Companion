//
//  RFHDefinitionView.h
//  J1A Companion
//
//  Created by Ryan Higgins on 11/27/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RFHDefinitionView : UIView

@property (nonatomic, copy) NSString *englishWord;
@property (nonatomic, copy) NSString *hiraganaWord;
@property (nonatomic) int frameNumber;
@property (nonatomic, strong) UIScrollView *scrollView;


-(instancetype)initWithFrame:(CGRect)frame scrollView:(UIScrollView *)scrollView frameNumber:(int)num englishWord:(NSString *)englishWord hiraganaWord:(NSString *)hiraganaWord;
@end
