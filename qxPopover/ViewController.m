//
//  ViewController.m
//  qxPopover
//
//  Created by Dynamiter on 7/2/13.
//  Copyright (c) 2013 Dynamiter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    PopoverViewController *pvController;
    
    UIButton *langBtn;
}

@end

@implementation ViewController

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
    
    langBtn = (UIButton *)[self.view viewWithTag:233];
    [langBtn setTitle:@"English (America)" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if( [[segue identifier] isEqualToString:@"Popover"] )
    {
        _popoverSegue = (UIStoryboardPopoverSegue *) segue;
        pvController = [_popoverSegue destinationViewController];
        pvController.stringFromSegue = @"ChangedText";
        pvController.delegate = self;
    }
}

- (void) setInput: (NSString *) theText
{
    NSLog(@"popover returned: %@", theText);
    [_PopoverButton setTitle:theText forState:UIControlStateNormal];
    [_popoverSegue.popoverController dismissPopoverAnimated:YES];
}

@end
