//
//  S_RoundNormalColorFontTextField.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_RoundNormalColorFontTextField.h"

@implementation S_RoundNormalColorFontTextField

//更换样式
- (void)hbbStyleControlChangeStyle
{
    self.borderStyle = UITextBorderStyleRoundedRect;
    UIColor *c = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleNormalTextColor];
    self.textColor = c;
    NSInteger fontSize = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleFontSizeStyleNormalFontSize];
    self.font = [UIFont systemFontOfSize:fontSize];
    
    UIColor *placeholderC = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStylePlaceholderColor];
    if (placeholderC != nil) {
        NSString *selfPlaceholder = self.placeholder;
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:selfPlaceholder attributes:[NSDictionary dictionaryWithObjectsAndKeys:placeholderC, NSForegroundColorAttributeName, nil]];
        self.attributedPlaceholder = attributedString;
    }
    
}

@end
