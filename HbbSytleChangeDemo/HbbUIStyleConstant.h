//
//  HbbUIStyleConstant.h
//  HBB_BuyerProject
//
//  Created by LUOCHENG DE on 15/10/29.
//  Copyright © 2015年 CHENG DE LUO. All rights reserved.
//

#ifndef HbbUIStyleConstant_h
#define HbbUIStyleConstant_h

//样式控制协议
@protocol HbbStyleControlDelegate <NSObject>

//更换样式
@required
- (void)hbbStyleControlChangeStyle;

@end

/**
 *  样式常量
 *
 *  @author apem
 */
#define kHbbUIStyleFontSizeStyle @"FontSizeStyle"                              //字体样式
#define kHbbUIStyleColorStyle @"ColorStyle"                                    //颜色样式
#define kHbbUIStyleImageStyle @"ImageStyle"                                    //图片样式
#define kHbbUIStyleSizeStyle @"SizeStyle"                                      //尺寸样式

/**
 *  颜色样式名称常量
 */
#define kHbbUIStyleColorStyleLineColor @"LineColor"                            //线颜色
#define kHbbUIStyleColorStylePageBackgroundColor @"PageBackgroundColor"        //页背景颜色
#define kHbbUIStyleColorStyleNavigationBarTintColor @"NavigationBarTintColor"  //导航背景颜色
#define kHbbUIStyleColorStyleNavigationTintColor @"NavigationTintColor"        //导航前景颜色
#define kHbbUIStyleColorStyleNormalTextColor @"NormalTextColor"                //字体正常颜色
#define kHbbUIStyleColorStyleTextColor2 @"TextColor2"                          //字体副正常颜色
#define kHbbUIStyleColorStyleCoolTextColor @"CoolTextColor"                    //字体冷色调颜色
#define kHbbUIStyleColorStyleWarmTextColor @"WarmTextColor"                    //字体暖色调颜色
#define kHbbUIStyleColorStyleMainColor @"MainColor"                            //主色
#define kHbbUIStyleColorStyleMainOpposeColor @"MainOpposeColor"                //主色对立颜色
#define kHbbUIStyleColorStylePlaceholderColor @"PlaceholderColor"              //占位符灰色

/**
 *  字体样式名称常量
 */
#define kHbbUIStyleFontSizeStyleBigestFontSize @"BigestFontSize"               //最大字体大小 32
#define kHbbUIStyleFontSizeStyleNavigationFontSize @"NavigationFontSize"       //导航字体 17
#define kHbbUIStyleFontSizeStyleNormalFontSize @"NormalFontSize"               //普通字体大小 15
#define kHbbUIStyleFontSizeStyleSmallFontSize @"SmallFontSize"                 //小字体大小 13
#define kHbbUIStyleFontSizeStyleSmallSmallFontSize @"SmallSmallFontSize"       //超小字体大小 11

/**
 *  尺寸样式名称常量
 */
#define kHbbUIStyleSizeNormalCornerRadius @"NormalCornerRadius"                //普通圆角

#endif /* HbbUIStyleConstant_h */
