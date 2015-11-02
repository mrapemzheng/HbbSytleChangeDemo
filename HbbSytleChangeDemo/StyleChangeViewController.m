//
//  StyleChangeViewController.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "StyleChangeViewController.h"
#import "HbbUIStyleHelper.h"

@interface StyleChangeViewController ()

@end

@implementation StyleChangeViewController

- (void)loadView
{
    [super loadView];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeStyleNotification:) name:HbbUIStyleHelperChangeStyleNotificationName object:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self hbbStyleControlChangeStyle];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:HbbUIStyleHelperChangeStyleNotificationName object:nil];
}

- (void)hbbStyleControlChangeStyle
{
    [self changeStyleWithView:self.view];
}

#pragma mark - private methods

//更改视图以及子视图的样式
- (void)changeStyleWithView:(UIView *)v
{
    
    if ([v respondsToSelector:@selector(hbbStyleControlChangeStyle)]) {
        [v performSelector:@selector(hbbStyleControlChangeStyle)];
    }
    
    for (UIView *view in v.subviews) {
        
        if ([view respondsToSelector:@selector(hbbStyleControlChangeStyle)]) {
            [view performSelector:@selector(hbbStyleControlChangeStyle)];
        }
        
        if (view.subviews.count != 0) {
            [self changeStyleWithView:view];
        }
    }
}

//接收到更改视图以及子视图的样式的通知
- (void)changeStyleNotification:(NSNotification *)notification
{
    [self hbbStyleControlChangeStyle];
}

@end
