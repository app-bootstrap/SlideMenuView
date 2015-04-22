//
//  SecondViewController.m
//  SlideMenuView
//
//  Created by xdf on 4/20/15.
//  Copyright (c) 2015 xdf. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    self.navigationItem.title = @"Second";
    self.navigationController.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
