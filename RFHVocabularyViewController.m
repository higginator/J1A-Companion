//
//  RFHVocabularyViewController.m
//  J1A Companion
//
//  Created by Ryan Higgins on 11/22/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHVocabularyViewController.h"
#import "RFHAppDelegate.h"

@interface RFHVocabularyViewController ()

@property (nonatomic, weak) RFHAppDelegate *mainDelegate;

@end

@implementation RFHVocabularyViewController

-(instancetype)initWithVocab: (RFHVocabulary *)vocab
{
    if (self = [super init]) {
        _vocab = vocab;
        _name = @"Vocabulary";
        self.navigationItem.title = _name;
        _mainDelegate = (RFHAppDelegate *)[[UIApplication sharedApplication] delegate];
        self.view.backgroundColor = self.mainDelegate.colorArray[2];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.vocab.items count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    id item = self.vocab.items[indexPath.row];
    cell.textLabel.text = [item name];
    cell.backgroundColor = self.mainDelegate.colorArray[2];
    // Configure the cell...
    
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
    id item = self.vocab.items[indexPath.row];
    [self.mainDelegate.uinc pushViewController:item animated:YES];
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.contentView.backgroundColor = self.mainDelegate.colorArray[2];
}




@end
