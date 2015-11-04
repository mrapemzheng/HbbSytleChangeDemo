//
//  ViewController.m
//  HbbSytleChangeDemo
//
//  Created by LUOCHENG DE on 15/11/2.
//  Copyright © 2015年 LUOCHENG DE. All rights reserved.
//

#import "ViewController.h"
#import "S_MainColorSwitch.h"
#import "HbbUIStyleHelper.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *thirdLabel; //普通视图或者第三方视图

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    S_MainColorSwitch *colorSwitch = [[S_MainColorSwitch alloc] initWithFrame:CGRectMake(50, 100, 80, 30)];
    colorSwitch.on = YES;
    [self.view addSubview:colorSwitch];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//更改样式
- (void)hbbStyleControlChangeStyle
{
    [super hbbStyleControlChangeStyle];
    
    UIColor *color = [HbbUIStyleHelper colorWithKey:kHbbUIStyleColorStyleLineColor];
    NSInteger fontSize = [HbbUIStyleHelper fontSizeWithKey:kHbbUIStyleFontSizeStyleBigestFontSize];
    self.thirdLabel.textColor = color;
    self.thirdLabel.font = [UIFont systemFontOfSize:fontSize];
    
    
}

#pragma mark - IBAction

//体验换肤
- (IBAction)experienceChangeStyle:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    //读取样式文件
    NSString *styleFilePath;
    if (sender.selected == YES) {
       styleFilePath = [[NSBundle mainBundle] pathForResource:@"MainUIStyle2.plist" ofType:nil];
        
    } else {
        styleFilePath = [[NSBundle mainBundle] pathForResource:@"MainUIStyle.plist" ofType:nil];
    }
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:styleFilePath];
    [[HbbUIStyleHelper shared] changeStyleWithStyleDictionary:dict];
    
    
}


@end
