//
//  RFHDefinitionsViewController.m
//  J1A Companion
//
//  Created by Ryan Higgins on 11/27/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHDefinitionsViewController.h"
#import "RFHAppDelegate.h"

@interface RFHDefinitionsViewController ()

@property (nonatomic, weak) RFHAppDelegate *mainDelegate;

@end

@implementation RFHDefinitionsViewController


-(instancetype)initWithDefinitions:(RFHDefinitions *)definitions
{
    if (self = [super init]) {
        _name = @"Definitions";
        _definitions = definitions;
        _mainDelegate = (RFHAppDelegate *)[[UIApplication sharedApplication] delegate];
        self.view.backgroundColor = self.mainDelegate.colorArray[2];
    }
    return self;
}

-(instancetype)init
{
    @throw [NSException exceptionWithName:@"wrong initializer" reason:@"use -initWithDefinition" userInfo:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
    return [self.definitions.items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    id item = self.definitions.items[indexPath.row];
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
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.contentView.backgroundColor = self.mainDelegate.colorArray[2];
}

@end
