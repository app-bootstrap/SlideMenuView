//
//  ThirdViewController.m
//  SlideMenuView
//
//  Created by xdf on 4/20/15.
//  Copyright (c) 2015 xdf. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
@end

@implementation ThirdViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    self.navigationItem.title = @"Third";
    self.navigationController.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
