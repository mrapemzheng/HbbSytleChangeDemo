//
//  S_TextColor2SmallSmallFontLabel.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_TextColor2SmallSmallFontLabel.h"

@implementation S_TextColor2SmallSmallFontLabel

- (void)hbbStyleControlChangeStyle
{
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleTextColor2];
    NSInteger fontSize = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleFontSizeStyleSmallSmallFontSize];
    self.font = [UIFont systemFontOfSize:fontSize];
    self.textColor = color;
}
@end
