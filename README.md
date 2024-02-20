# HbbSytleChangeDemo

This is a component than can change the style at a second.
I write it in 2015, and I felt upset to globally style changing. 
So finally, I write this component for myself.

Just conform a protocol named 'HbbStyleControlDelegate', which actually read style from a configuration file.

And of cause, I can update the style when I call the method named 'hbbStyleControlChangeStyle', from father view.

ios皮肤/样式更换 适配xib和代码

#优势
1.兼容xib,解决以往xib上难以统一全局样式的问题

2.由于在项目上定义了很多样式控件, 在xib上拉空间的时候并不需要对样式进行设置, 而是直接继承写好的样式类,加快了开发的进度, 并且避免了团队开发中每个人对样式定义的误差

3.兼容第三方控件类

#原本xib上的图片
  ![image](https://github.com/iosApem/HbbSytleChangeDemo/blob/master/xib%E6%95%88%E6%9E%9C%E5%9B%BE.png)

#效果1
![image](https://github.com/iosApem/HbbSytleChangeDemo/blob/master/%E6%8D%A2%E8%82%A4%E5%90%8E%E7%9A%84%E6%95%88%E6%9E%9C%E5%9B%BE1.png)

#效果2
![image](https://github.com/iosApem/HbbSytleChangeDemo/blob/master/%E6%95%88%E6%9E%9C%E5%9B%BE2.png)

#换肤的使用方法

![image](https://github.com/iosApem/HbbSytleChangeDemo/blob/master/%E4%BD%BF%E7%94%A8%E6%96%B9%E6%B3%951.png)

#具体配置
#1. 编写一个样式类

例如继承于UILabel的S_WarmColorBigestFontLabel 

.h文件

实现HbbStyleControlDelegate的hbbStyleControlChangeStyle方法

import <UIKit/UIKit.h>

import "HbbUIStyleConstant.h"

import "HbbUIStyleHelper.h"

//暖色 超大字体 标签

@interface S_WarmColorBigestFontLabel : UILabel<HbbStyleControlDelegate>

@end

.m文件

import "S_WarmColorBigestFontLabel.h"

@implementation S_WarmColorBigestFontLabel

- (void)hbbStyleControlChangeStyle
{
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleWarmTextColor];
    NSInteger fontSize = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleFontSizeStyleBigestFontSize];
    self.font = [UIFont systemFontOfSize:fontSize];
    self.textColor = color;
}

@end

#2.配置样式文件

![image](https://github.com/iosApem/HbbSytleChangeDemo/blob/master/%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B61.png)
