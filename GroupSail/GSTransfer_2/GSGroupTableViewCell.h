//
//  GSGroupTableViewCell.h
//  GroupSail
//
//  Created by Gabrielle Miller-Messner on 1/19/13.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSGroupTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *groupNumLabel;
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@property (weak, nonatomic) IBOutlet UIImageView *groupFlagImageView;
@property (weak, nonatomic) IBOutlet UIImageView *progressImageView;
@property (weak, nonatomic) IBOutlet UIButton *student1Button;
@property (weak, nonatomic) IBOutlet UIImageView *student1FlagImageView;
@property (weak, nonatomic) IBOutlet UIButton *student2Button;
@property (weak, nonatomic) IBOutlet UIImageView *student2FlagImageView;
@property (weak, nonatomic) IBOutlet UIButton *student3Button;
@property (weak, nonatomic) IBOutlet UIImageView *student3FlagImageView;
@property (weak, nonatomic) IBOutlet UIButton *student4Button;
@property (weak, nonatomic) IBOutlet UIImageView *student4FlagImageView;

@end
