//
//  PopoverViewController.h
//  qxPopover
//
//  Created by Dynamiter on 7/2/13.
//  Copyright (c) 2013 Dynamiter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopoverViewController : UIViewController <UIPopoverControllerDelegate, UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *languageTableView;

@end
