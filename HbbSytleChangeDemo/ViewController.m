//
//  ViewController.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "ViewController.h"
#import "S_MainColorSwitch.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    S_MainColorSwitch *colorSwitch = [[S_MainColorSwitch alloc] initWithFrame:CGRectMake(50, 100, 80, 30)];
    [self.view addSubview:colorSwitch];
    [colorSwitch hbbStyleControlChangeStyle];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//更改样式
- (void)hbbStyleControlChangeStyle
{
    [super hbbStyleControlChangeStyle];
    
//    UIColor *c = [HbbUIStyleHelper colorWithKey:@""];
//    self.colorSwitch.bintcolor = c;
    
}

@end
