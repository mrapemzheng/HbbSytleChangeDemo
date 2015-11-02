//
//  S_CoolColorNormalFontLabel.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_CoolColorNormalFontLabel.h"

@implementation S_CoolColorNormalFontLabel

- (void)hbbStyleControlChangeStyle
{
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleCoolTextColor];
    NSInteger fontSize = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleFontSizeStyleNormalFontSize];
    self.font = [UIFont systemFontOfSize:fontSize];
    self.textColor = color;
}

@end
