//
//  PopoverViewController.m
//  qxPopover
//
//  Created by Dynamiter on 7/2/13.
//  Copyright (c) 2013 Dynamiter. All rights reserved.
//

#import "PopoverViewController.h"

@interface PopoverViewController ()
{
    NSArray *languages;
}

@end

@implementation PopoverViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    languages = @[@"English (Amercia)", @"English (British)", @"Chinese Tranditional", @"Chinese Simplized"];
    
    _languageTableView.delegate = self;
    _languageTableView.dataSource = self;
    
    NSLog(@"PopoverView loaded");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    NSLog(@"PopoverView received warning");
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [languages count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"MyReuseIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:MyIdentifier];
    }
    
    cell.textLabel.text = [languages objectAtIndex:[indexPath row]];
    return cell;
}

#pragma mark - UITableViewDelegate

@end
