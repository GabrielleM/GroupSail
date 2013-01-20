//
//  GSTeacherViewController.m
//  GroupSail
//
//  Created by Gabrielle Miller-Messner on 1/19/13.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import "GSTeacherViewController.h"
#import "GSClassTableViewCell.h"
#import <Parse/Parse.h>

@interface GSTeacherViewController ()
@property (nonatomic, strong) NSArray *classes;
@end

@implementation GSTeacherViewController
@synthesize tableView = _tableView;
@synthesize classes = _classes;

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.classes.count;
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
  GSClassTableViewCell *cell = (GSClassTableViewCell *)[tableView dequeueReusableCellWithIdentifier:[GSClassTableViewCell reuseIdentifier]];
    
   if (cell == nil)
   {
      cell = [[[NSBundle mainBundle] loadNibNamed:@"GSClassTableViewCell" owner:self options:nil] objectAtIndex:0];
   }
    
    PFObject *class = [self.classes objectAtIndex:indexPath.row];
    
    cell.subjectLabel.text = [class objectForKey:@"title"];
    cell.projectLabel.text = [class objectForKey:@"projectName"];
    cell.numGroupsLabel.text = [NSString stringWithFormat:@"%@ Groups",[class objectForKey:@"numGroups"]];
    cell.dueDateLabel.text = [class objectForKey:@"dueDate"];
   
   return cell;
   
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 126;
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
    
    PFQuery *query = [PFQuery queryWithClassName:@"Class"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            
            NSLog(@"find success");
            self.classes = [NSArray arrayWithArray:objects];
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
