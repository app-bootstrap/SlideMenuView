//
//  FirstViewController.m
//  SlideMenuView
//
//  Created by xdf on 4/20/15.
//  Copyright (c) 2015 xdf. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@end

@implementation FirstViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    self.navigationItem.title = @"First";
    self.navigationController.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
