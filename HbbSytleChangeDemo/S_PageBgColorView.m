//
//  S_PageBgColorView.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_PageBgColorView.h"

@implementation S_PageBgColorView

- (void)hbbStyleControlChangeStyle
{
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStylePageBackgroundColor];
    self.backgroundColor = color;
}


@end
