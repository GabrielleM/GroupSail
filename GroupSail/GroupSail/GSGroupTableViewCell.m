//
//  GSGroupTableViewCell.m
//  GroupSail
//
//  Created by Gabrielle Miller-Messner on 1/19/13.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import "GSGroupTableViewCell.h"

@implementation GSGroupTableViewCell
@synthesize groupNumLabel = _groupNumLabel;
@synthesize groupFlagImageView = _groupFlagImageView;
@synthesize progressLabel = _progressLabel;
@synthesize progressImageView = _progressImageView;
@synthesize student1Button = _student1Button;
@synthesize student1FlagImageView = _student1FlagImageView;
@synthesize student2Button = _student2Button;
@synthesize student2FlagImageView = _student2FlagImageView;
@synthesize student3Button = _student3Button;
@synthesize student3FlagImageView = _student3FlagImageView;
@synthesize student4Button = _student4Button;
@synthesize student4FlagImageView = _student4FlagImageView;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
