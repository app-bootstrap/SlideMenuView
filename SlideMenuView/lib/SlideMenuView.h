//
//  SlideMenuView.h
//  SlideMenuView
//
//  Created by xdf on 4/20/15.
//  Copyright (c) 2015 xdf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SlideMenuView : UIViewController
@property(nonatomic, strong) UIViewController *leftViewController;
@property(nonatomic, strong) UIViewController *rootViewController;
@property(nonatomic, strong) UIImageView *backgroundImageView;
- (id)initWithRootController:(UIViewController *)rootViewController;
@end