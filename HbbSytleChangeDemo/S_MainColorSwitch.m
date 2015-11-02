//
//  S_MainColorSwitch.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "S_MainColorSwitch.h"

@implementation S_MainColorSwitch

//更换样式
- (void)hbbStyleControlChangeStyle
{
    UIColor *c = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleMainColor];
    self.onTintColor = c;
}
@end
