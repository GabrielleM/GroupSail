//
//  GSStudentViewController.m
//  GroupSail
//
//  Created by ENTY on 13-01-19.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import "GSStudentViewController.h"
#import "GSTaskTableViewCell.h"
#import <Parse/Parse.h>

@interface GSStudentViewController ()

@property (nonatomic, strong) NSArray *milestones;
@property (nonatomic, strong) NSArray *tasks;
@end

@implementation GSStudentViewController

@synthesize tableView = _tableView;
@synthesize milestones = _milestones;
@synthesize tasks = _tasks;


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tasks.count;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    GSTaskTableViewCell *cell = (GSTaskTableViewCell *)[tableView dequeueReusableCellWithIdentifier:[GSTaskTableViewCell reuseIdentifier]];
    
    if (cell == nil)
    {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"GSTaskTableViewCell" owner:nil options:nil] objectAtIndex:0];
    }
    
    PFObject *task = [self.tasks objectAtIndex:indexPath.row];
    
    cell.taskLabel.text = [task objectForKey:@"title"];
    [cell.studentButton setTitle:[task objectForKey:@"student"] forState:UIControlStateNormal];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 67.f;
}
     
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
    PFQuery *query = [PFQuery queryWithClassName:@"Task"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            
            NSLog(@"%@",objects);
            self.tasks = [NSArray arrayWithArray:objects];
            self.tableView.dataSource = self;
            self.tableView.delegate = self;
            [self.tableView reloadData];
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
}

@end
