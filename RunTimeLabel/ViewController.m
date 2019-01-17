//
//  ViewController.m
//  RunTimeLabel
//
//  Created by Mac on 2019/1/17.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Attribute.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *showTitleLabel=[[UILabel alloc]initWithFrame:CGRectMake(20, 200, 50, 100)];  //在图片上面添加UILabel
    
    showTitleLabel.textColor=[UIColor whiteColor];
    showTitleLabel.textAlignment=NSTextAlignmentCenter;
    showTitleLabel.backgroundColor = [UIColor orangeColor];
    
    
    showTitleLabel.newFont=[UIFont systemFontOfSize:28];
    showTitleLabel.newText = @"给Label增加属性";
    
    [self.view addSubview:showTitleLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
