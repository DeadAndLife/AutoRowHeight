//
//  Cell.m
//  AutoRowHeight
//
//  Created by qingyun on 16/6/27.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (void)awakeFromNib {
    // Initialization code
    //label预计显示的宽度
    self.contentLabel.preferredMaxLayoutWidth = [[UIScreen mainScreen] bounds].size.width - 16;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
