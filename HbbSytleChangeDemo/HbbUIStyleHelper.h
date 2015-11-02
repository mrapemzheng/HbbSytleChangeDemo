//
//  HbbUIStyleHelper.h
//  HBB_BuyerProject
//
//  Created by LUOCHENG DE on 15/10/29.
//  Copyright © 2015年 CHENG DE LUO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HbbUIStyleHelper.h"

//默认样式资源文件名称
static NSString *HbbUIStyleHelperMainHbbUIStyleName = @"MainUIStyle.plist";

//样式发生变更通知名称
static NSString *HbbUIStyleHelperChangeStyleNotificationName = @"HbbUIStyleHelperChangeStyleNotificationName";

/**
 *  样式帮助者
 *
 *  @author apem
 */

@interface HbbUIStyleHelper : NSObject


/**
 *  单例
 */
+ (instancetype)shared;

/**
 *  设置样式字典
 *
 *  @param styleDictionary 样式字典
 */
- (void)changeStyleWithStyleDictionary:(NSDictionary *)styleDictionary;

/**
 *  获取颜色样式
 *
 *  @param key 颜色样式key
 */
+ (UIColor*)colorWithKey:(NSString *)key;

/**
 *  获取文本样式
 *
 *  @param key 字体样式key
 */
+ (NSInteger)fontSizeWithKey:(NSString *)key;

/**
 *  获取图片样式
 *
 *  @param key 图片样式key
 */
+ (UIImage *)imageWithKey:(NSString *)key;


/**
 *  获取尺寸样式
 *
 *  @param key 尺寸样式key
 */
+ (CGFloat)sizeWithKey:(NSString *)key;

@end
