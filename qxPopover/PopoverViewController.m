//
//  PopoverViewController.m
//  qxPopover
//
//  Created by Dynamiter on 7/2/13.
//  Copyright (c) 2013 Dynamiter. All rights reserved.
//

#import "PopoverViewController.h"
#import "ViewController.h"

@interface PopoverViewController ()
{
    //NSArray *languages;
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
    
    _languages = @[@"English (America)", @"English (British)", @"Chinese Tranditional", @"Chinese Simplified", @"Korean", @"Japanese", @"Arabic", @"Spain", @"Portige", @"Mongolia", @"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J"];
    
    _languageTableView.delegate = self;
    _languageTableView.dataSource = self;
    
    [_languageTableView sizeToFit];
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
    return [_languages count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"MyReuseIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:MyIdentifier];
    }
    
    cell.textLabel.text = [_languages objectAtIndex:[indexPath row]];
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@", [_languages objectAtIndex:[indexPath row]]);
    NSLog(@"%@", _stringFromSegue);
    
    [self.delegate setInput: [_languages objectAtIndex:[indexPath row]]];
    UITableViewCell *cell =[tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =[tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryNone;
}

@end
