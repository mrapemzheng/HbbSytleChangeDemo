//
//  S_NormalColorNormalFontLabel.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_NormalColorNormalFontLabel.h"

@implementation S_NormalColorNormalFontLabel

- (void)hbbStyleControlChangeStyle
{
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleNormalTextColor];
    NSInteger fontSize = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleFontSizeStyleNormalFontSize];
    self.font = [UIFont systemFontOfSize:fontSize];
    self.textColor = color;
}

@end
