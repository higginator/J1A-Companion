//
//  RFHVocabulary.m
//  J1A Companion
//
//  Created by Ryan Higgins on 11/22/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHVocabulary.h"
#import "RFHDefinitions.h"
#import "RFHDefinitionsViewController.h"

@interface RFHVocabulary ()

@property (nonatomic, strong) NSMutableArray *privateItems;

@end

@implementation RFHVocabulary

-(instancetype)init
{
    if (self = [super init]) {
        _name = @"Vocabulary";
        _items = [[NSArray alloc] init];
        _privateItems = [[NSMutableArray alloc] init];
        [self createItems];
    }
    return self;
}

-(void)createItems
{
    RFHDefinitions *definitions = [[RFHDefinitions alloc] init];
    RFHDefinitionsViewController *definitionVC = [[RFHDefinitionsViewController alloc] initWithDefinitions:definitions];
    [self.privateItems addObject:definitionVC];
}

-(NSArray *)items
{
    return self.privateItems;
}

@end
