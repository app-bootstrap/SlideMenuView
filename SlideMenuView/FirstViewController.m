//
//  FirstViewController.m
//  SlideMenuView
//
//  Created by xdf on 4/20/15.
//  Copyright (c) 2015 xdf. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (strong, nonatomic) UIWebView *webView;
@end

@implementation FirstViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    self.navigationItem.title = @"First";
    self.navigationController.view.backgroundColor = [UIColor whiteColor];
    [self initWebview];
}

- (void)initWebview {
    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.webView setScalesPageToFit: YES];
    [self.view addSubview: self.webView];
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString: @"http://www.baidu.com"]];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
