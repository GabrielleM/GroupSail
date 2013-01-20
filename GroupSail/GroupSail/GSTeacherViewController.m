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

@end

@implementation GSTeacherViewController
@synthesize tableView = _tableView;

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   static NSString *teacherTableIdentifier = @"GSTableViewCell";
   
  GSClassTableViewCell *cell = (GSClassTableViewCell *)[tableView dequeueReusableCellWithIdentifier:teacherTableIdentifier];
   if (cell == nil)
   {
      NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"GSClassTableViewCell" owner:self options:nil];
      cell = [nib objectAtIndex:0];
   }
/*
   cell.subjectLabel.text = [tableData objectAtIndex:indexPath.row];
   cell.projectLabel.text = [tableData objectAtIndex:indexPath.row];
   cell.numGroupsLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.dueDateLabel.text = [tableData objectAtIndex:indexPath.row];
   
   cell.ImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
*/
   
   return cell;
   
   
   
   
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
   // self.tableView.delegate = self;
   // self.tableView.dataSource = self;
    
    PFQuery *query = [PFQuery queryWithClassName:@"Class"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
}

@end
