//
//  MenuViewController.m
//  SlideMenuView
//
//  Created by xdf on 4/20/15.
//  Copyright (c) 2015 xdf. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "MenuViewController.h"

@interface MenuViewController () <UITableViewDataSource,UITableViewDelegate>
@property(strong,nonatomic)UITableView *tableview;
@property(strong,nonatomic)UIButton *settingButton;
@property(nonatomic, strong)NSArray *titles;
@property(nonatomic, assign)CGFloat avatarViewWidth;
@property(nonatomic, assign)CGFloat avatarViewHeight;
@property(strong,nonatomic)FirstViewController *mainSide;
@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titles = @[@"First", @"Second", @"Third"];
    self.avatarViewHeight = 60;
    self.avatarViewWidth = 60;
    self.view.backgroundColor = [UIColor clearColor];
    self.tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height / 8 + self.avatarViewHeight / 2 + 10, self.view.bounds.size.width - self.view.bounds.size.width / 6, self.view.bounds.size.height / 4 * 3 - self.avatarViewHeight / 2 - 10) style:UITableViewStylePlain];
    self.tableview.delegate = self;
    self.tableview.dataSource= self;
    self.tableview.backgroundColor = [UIColor clearColor];
    self.tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:self.tableview];
    [self initAvatarImage];
    [self setTableSelectedIndex];
    [self initFooter];
}

- (void)initAvatarImage {
    self.avatarImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"avatar.png"]];
    self.avatarImage.backgroundColor = [UIColor blueColor];
    self.avatarImage.layer.cornerRadius = self.avatarViewHeight / 2;
    self.avatarImage.layer.masksToBounds = YES;
    self.avatarImage.frame = CGRectMake(10, self.view.bounds.size.height / 8 - self.avatarViewHeight / 2, self.avatarViewWidth, self.avatarViewHeight);
    [self.view addSubview:self.avatarImage];
}

- (void)setTableSelectedIndex {
    [self.tableview selectRowAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0] animated:NO scrollPosition:UITableViewScrollPositionNone];
}

- (void)initFooter {
    NSInteger marginBottom = 40;
    self.settingButton = [[UIButton alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - marginBottom, 80, marginBottom)];
    [self.settingButton setTitleColor:[UIColor whiteColor]forState:UIControlStateNormal];
    [self.settingButton setAlpha: .6];
    [self.settingButton setTitle:@"setting" forState:UIControlStateNormal];
    [self.view addSubview: self.settingButton];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titles.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier =@"Cell";
    UITableViewCell *cell = [self.tableview  dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:CellIdentifier];
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.textLabel.highlightedTextColor = [UIColor blackColor];
        cell.backgroundColor = [UIColor colorWithRed: 240.0 / 255.0 green:240.0 / 255.0 blue: 240.0 / 255.0 alpha: 0.08 * (indexPath.row + 1)];
        cell.textLabel.font = [UIFont systemFontOfSize:16];
        cell.selectedBackgroundView = [[[UIView alloc] initWithFrame:cell.frame] init];
        cell.selectedBackgroundView.backgroundColor = [UIColor colorWithRed: 240.0 / 255.0 green:240.0 / 255.0 blue: 240.0 / 255.0 alpha: 0.1 * (indexPath.row + 1)];
        cell.textLabel.text =[NSString stringWithFormat: @"%@", self.titles[indexPath.row]];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50.0f;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    switch (indexPath.row) {
        case 0:
            [self launchFirstView];
            break;
        case 1:
            [self launchSecondView];
            break;
        case 2:
            [self launchThirdView];
            break;
        default:
            break;
    }
}

- (void)launchFirstView {
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    if (!self.mainSide) {
        FirstViewController *mainSide = [[FirstViewController alloc] init];
        self.mainSide = mainSide;
    }
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController: _mainSide];
    app.slideMenu.rootViewController = nav;
}

- (void)launchSecondView {
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    SecondViewController *mainSide = [[SecondViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController: mainSide];
    app.slideMenu.rootViewController = nav;
}

- (void)launchThirdView {
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    ThirdViewController *mainSide = [[ThirdViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController: mainSide];
    app.slideMenu.rootViewController = nav;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end