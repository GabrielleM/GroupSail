//
//  GSViewController.m
//  GroupSail
//
//  Created by ENTY on 13-01-19.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import "GSViewController.h"
#import "GSTeacherViewController.h"
#import <Parse/Parse.h>

@interface GSViewController ()

@end

@implementation GSViewController
- (IBAction)teacherPressed:(UIButton *)sender
{
    GSTeacherViewController *teacherVC = [[GSTeacherViewController alloc] init];
    [self.navigationController pushViewController:teacherVC animated:YES];
}
- (IBAction)studentPressed:(UIButton *)sender {
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

@end
