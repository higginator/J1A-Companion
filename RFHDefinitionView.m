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

-(instancetype)initWithFrame:(CGRect)frame scrollView:(UIScrollView *)scrollView frameNumber:(int)num englishWord:(NSString *)englishWord hiraganaWord:(NSString *)hiraganaWord
{
    self = [super initWithFrame:frame];
    if (self) {
        _mainDelegate = (RFHAppDelegate *)[[UIApplication sharedApplication] delegate];
        self.backgroundColor = self.mainDelegate.colorArray[2];
        self.englishWord = englishWord;
        self.hiraganaWord = hiraganaWord;
        self.frameNumber = num;
        self.scrollView = scrollView;
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
    // Drawing code
    /*
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    float maxRadius = hypotf(bounds.size.width, bounds.size.height) / 2.0;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    path.lineWidth = 10;
    [path stroke];
     */
}


@end
