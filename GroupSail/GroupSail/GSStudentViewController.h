//
//  GSStudentViewController.h
//  GroupSail
//
//  Created by ENTY on 13-01-19.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSStudentViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *progressView;

@end
