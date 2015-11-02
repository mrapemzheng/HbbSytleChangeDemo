//
//  HbbUIStyleHelper.m
//  HBB_BuyerProject
//
//  Created by LUOCHENG DE on 15/10/29.
//  Copyright © 2015年 CHENG DE LUO. All rights reserved.
//

#import "HbbUIStyleHelper.h"
#import "HbbUIStyleConstant.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

//颜色
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

static HbbUIStyleHelper *static_styleHelper;

@interface HbbUIStyleHelper ()

@property (nonatomic, strong) NSDictionary *styleDict;

@property (nonatomic, strong, readonly) NSDictionary *fontSytleDict;
@property (nonatomic ,strong, readonly) NSDictionary *colorStyleDict;
@property (nonatomic, strong, readonly) NSDictionary *imageSytleDict;
@property (nonatomic, strong, readonly) NSDictionary *sizeSytleDict;

@end

@implementation HbbUIStyleHelper

@synthesize fontSytleDict = _fontSytleDict;
@synthesize colorStyleDict = _colorStyleDict;
@synthesize imageSytleDict = _imageSytleDict;
@synthesize sizeSytleDict = _sizeSytleDict;

- (instancetype)init
{
    if (self = [super init]) {
        NSString *resourcePath = [NSBundle mainBundle].resourcePath;
        NSString *styleFilePath = [NSString stringWithFormat:@"%@/%@", resourcePath, HbbUIStyleHelperMainHbbUIStyleName];
        NSDictionary *styleDict = [NSDictionary dictionaryWithContentsOfFile:styleFilePath];
        self.styleDict = styleDict;
        
    }
    return self;
}

+ (instancetype)shared
{
    if (static_styleHelper == nil) {
        static_styleHelper = [[HbbUIStyleHelper alloc] init];
        
    }
    return static_styleHelper;
}

- (void)setStyleDict:(NSDictionary *)styleDict
{
    _styleDict = styleDict;
    _fontSytleDict = [styleDict objectForKey:kHbbUIStyleFontSizeStyle];
    _colorStyleDict = [styleDict objectForKey:kHbbUIStyleColorStyle];
    _imageSytleDict = [styleDict objectForKey:kHbbUIStyleImageStyle];
    _sizeSytleDict = [styleDict objectForKey:kHbbUIStyleSizeStyle];
    
}

- (void)changeStyleWithStyleDictionary:(NSDictionary *)styleDictionary
{
    self.styleDict = styleDictionary;
    
    //send a change style notification
    [[NSNotificationCenter defaultCenter] postNotificationName:HbbUIStyleHelperChangeStyleNotificationName object:nil];
}

+ (NSInteger)fontSizeWithKey:(NSString *)key
{
    NSNumber *value = [[HbbUIStyleHelper shared].fontSytleDict objectForKey:key];
    NSInteger fieSize = 0;
    if (value != nil) {
        fieSize = [value integerValue];
    }
    return fieSize;
}

+ (UIColor *)colorWithKey:(NSString *)key
{
    NSString *value = [[HbbUIStyleHelper shared].colorStyleDict objectForKey:key];
    UIColor *color = nil;
    if (value != nil && [value isEqualToString:@""] == NO) {
        //先以16为参数告诉strtoul字符串参数表示16进制数字，然后使用0x%X转为数字类型
        long long longlongvalue = strtoul([value UTF8String],0,16);
        color = UIColorFromRGB(longlongvalue);
    }
    
    return color;
}

+ (UIImage *)imageWithKey:(NSString *)key;
{
    NSString *value = [[HbbUIStyleHelper shared].imageSytleDict objectForKey:key];
    UIImage *image = nil;
    if (value != nil && [value isEqualToString:@""] == NO) {
        image = [UIImage imageNamed:value];
    }
    
    return image;
}

+ (CGFloat)sizeWithKey:(NSString *)key
{
    NSNumber *value = [[HbbUIStyleHelper shared].imageSytleDict objectForKey:key];
    CGFloat size = 0.0f;
    if (value != nil) {
        size = [value floatValue];
    }
    
    return size;
}

@end
