//
//  GSViewController.m
//  GroupSail
//
//  Created by ENTY on 13-01-19.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import "GSViewController.h"
#import <Parse/Parse.h>

@interface GSViewController ()

@end

@implementation GSViewController
- (IBAction)teacherPressed:(UIButton *)sender
{

}
- (IBAction)studentPressed:(UIButton *)sender {
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    [testObject setObject:@"bar" forKey:@"foo"];
    [testObject save];
}

@end
