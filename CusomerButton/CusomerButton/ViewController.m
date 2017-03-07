//
//  ViewController.m
//  CusomerButton
//
//  Created by 杨俊飞 on 2017/3/7.
//  Copyright © 2017年 LYN. All rights reserved.
//

#import "ViewController.h"
#import "CustomerButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor      = [UIColor whiteColor];
    CustomerButton *customerButton = [[CustomerButton alloc] initWithFrame:CGRectMake(0, 60, 150, 40)];
    customerButton.customerTitle = @"测试";
    customerButton.customerImage = @"checkbox_room_selected";
    customerButton.border        = 10;
    customerButton.customerButtonType = CustomerButtonTypeLeftRight;
    [self.view addSubview:customerButton];}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
