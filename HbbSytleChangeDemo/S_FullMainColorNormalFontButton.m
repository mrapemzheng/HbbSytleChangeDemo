//
//  S_FullMainColorNormalFontButton.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_FullMainColorNormalFontButton.h"

@implementation S_FullMainColorNormalFontButton

- (void)hbbStyleControlChangeStyle
{
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleMainColor];
    UIColor *foreGroundColor = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleMainOpposeColor];
    NSInteger fontSize = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleFontSizeStyleNormalFontSize];
    CGFloat cornerRadius = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleSizeNormalCornerRadius];
    
    self.backgroundColor = color;
    self.titleLabel.textColor = foreGroundColor;
    self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    self.layer.cornerRadius = cornerRadius;
    self.clipsToBounds = YES;
    
}

@end
