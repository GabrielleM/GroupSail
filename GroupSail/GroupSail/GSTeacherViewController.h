//
//  GSTeacherViewController.h
//  GroupSail
//
//  Created by Gabrielle Miller-Messner on 1/19/13.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSTeacherViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
