//
//  GSTaskTableViewCell.h
//  GroupSail
//
//  Created by ENTY on 13-01-19.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSTaskTableViewCell : UITableViewCell

+ (NSString *)reuseIdentifier;

@property (weak, nonatomic) IBOutlet UIButton *checkButton;
@property (weak, nonatomic) IBOutlet UILabel *taskLabel;
@property (weak, nonatomic) IBOutlet UIButton *studentButton;

@end
