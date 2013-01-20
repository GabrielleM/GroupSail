//
//  GSClassTableViewCell.h
//  GroupSail
//
//  Created by Gabrielle Miller-Messner on 1/19/13.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSClassTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *subjectLabel;
@property (weak, nonatomic) IBOutlet UILabel *projectLabel;
@property (weak, nonatomic) IBOutlet UILabel *numGroupsLabel;
@property (weak, nonatomic) IBOutlet UILabel *dueDateLabel;
@property (weak, nonatomic) IBOutlet UIImageView *flagImageView;

@end
