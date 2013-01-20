//
//  GSClassTableViewCell.m
//  GroupSail
//
//  Created by Gabrielle Miller-Messner on 1/19/13.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import "GSClassTableViewCell.h"

@implementation GSClassTableViewCell
@synthesize subjectLabel = _subjectLabel;
@synthesize projectLabel = _projectLabel;
@synthesize numGroupsLabel = _numGroupsLabel;
@synthesize dueDateLabel = _dueDateLabel;
@synthesize flagImageView = _flagImageView;

+ (NSString *) reuseIdentifier
{
    return @"ClassCellIdentifier";
}



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
