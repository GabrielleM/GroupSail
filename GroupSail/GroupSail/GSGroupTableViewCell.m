//
//  GSGroupTableViewCell.m
//  GroupSail
//
//  Created by Gabrielle Miller-Messner on 1/19/13.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import "GSGroupTableViewCell.h"

@implementation GSGroupTableViewCell

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
