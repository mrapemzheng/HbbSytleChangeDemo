//
//  S_TextColor2NormalFontLabel.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_TextColor2NormalFontLabel.h"

@implementation S_TextColor2NormalFontLabel

- (void)hbbStyleControlChangeStyle
{
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleTextColor2];
    NSInteger fontSize = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleFontSizeStyleNormalFontSize];
    self.font = [UIFont systemFontOfSize:fontSize];
    self.textColor = color;
}

@end
