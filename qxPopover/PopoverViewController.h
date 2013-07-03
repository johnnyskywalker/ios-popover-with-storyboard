//
//  PopoverViewController.h
//  qxPopover
//
//  Created by Dynamiter on 7/2/13.
//  Copyright (c) 2013 Dynamiter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface PopoverViewController : UIViewController <UIPopoverControllerDelegate, UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *languageTableView;
@property (weak, nonatomic) NSString *stringFromSegue;
@property (nonatomic, assign) id delegate;


@end
