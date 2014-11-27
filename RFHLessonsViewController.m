//
//  RFHLessonsViewController.m
//  J1A Companion
//
//  Created by Ryan Higgins on 11/18/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHLessonsViewController.h"
#import "RFHVocabularyViewController.h"
#import "RFHAppDelegate.h"

@interface RFHLessonsViewController ()

@property (nonatomic, weak) RFHAppDelegate *mainDelegate;

@end

#define VOCABULARY 0
#define KANJI 1
#define GRAMMAR 2

@implementation RFHLessonsViewController

-(instancetype)init
{
    @throw [NSException exceptionWithName:@"Wrong initializer" reason:@"use -initWithLesson" userInfo:nil];
}

-(instancetype)initWithLesson:(RFHLesson *)lesson
{
    if (self=[super init]) {
        _lesson = lesson;
        self.navigationItem.title = lesson.lessonName;
        _mainDelegate = (RFHAppDelegate *)[[UIApplication sharedApplication] delegate];
        self.view.backgroundColor = self.mainDelegate.colorArray[2];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
}

#pragma mark - Table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.lesson.items count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    id item = self.lesson.items[indexPath.row];
    cell.textLabel.text = [item name];
    cell.backgroundColor = self.mainDelegate.colorArray[2];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.contentView.backgroundColor = self.mainDelegate.colorArray[1];
}

-(void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.contentView.backgroundColor = self.mainDelegate.colorArray[2];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.contentView.backgroundColor = self.mainDelegate.colorArray[1];
    id item = self.lesson.items[indexPath.row];
    [self.mainDelegate.uinc pushViewController:item animated:YES];
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.contentView.backgroundColor = self.mainDelegate.colorArray[2];
}

@end
