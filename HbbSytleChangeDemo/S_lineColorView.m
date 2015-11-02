//
//  S_lineColorView.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_lineColorView.h"

@implementation S_lineColorView

- (void)hbbStyleControlChangeStyle
{
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleLineColor];
    self.backgroundColor = color;
}

@end
