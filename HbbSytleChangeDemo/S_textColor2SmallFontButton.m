//
//  S_textColor2SmallFontButton.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_textColor2SmallFontButton.h"

@implementation S_textColor2SmallFontButton

- (void)hbbStyleControlChangeStyle
{
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleTextColor2];
    NSInteger fontSize = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleFontSizeStyleNormalFontSize];
    CGFloat cornerRadius = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleSizeNormalCornerRadius];
    
    self.titleLabel.textColor = color;
    self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    self.layer.cornerRadius = cornerRadius;
    self.layer.borderColor = color.CGColor;
    self.clipsToBounds = YES;
    
}


@end
