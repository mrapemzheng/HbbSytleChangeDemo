//
//  S_WarmColorBigestFontLabel.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_WarmColorBigestFontLabel.h"

@implementation S_WarmColorBigestFontLabel

- (void)hbbStyleControlChangeStyle
{
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleWarmTextColor];
    NSInteger fontSize = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleFontSizeStyleBigestFontSize];
    self.font = [UIFont systemFontOfSize:fontSize];
    self.textColor = color;
}

@end
