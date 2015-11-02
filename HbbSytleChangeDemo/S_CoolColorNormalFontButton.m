//
//  S_CoolColorNormalFontButton.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_CoolColorNormalFontButton.h"

@implementation S_CoolColorNormalFontButton

- (void)hbbStyleControlChangeStyle
{
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleCoolTextColor];
    NSInteger fontSize = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleFontSizeStyleNormalFontSize];
    CGFloat cornerRadius = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleSizeNormalCornerRadius];
    
    self.titleLabel.textColor = color;
    self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    self.layer.cornerRadius = cornerRadius;
    self.clipsToBounds = YES;
    
    self.layer.borderColor = color.CGColor;
}


@end
