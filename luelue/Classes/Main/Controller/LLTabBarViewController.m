//
//  LLTabBarViewController.m
//  luelue
//
//  Created by aaaa on 2017/10/11.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//

#import "LLTabBarViewController.h"
#import "LLHomeViewController.h";
#import "LLMessageViewController.h"
#import "LLDataViewController.h"
#import "LLMeViewController.h"
#import "LLNavigationViewController.h"
#import "UIImage+LLExtension.h"

@interface LLTabBarViewController ()<UITabBarDelegate>
@property (nonatomic, strong) LLMessageViewController *messageVC;
@end

@implementation LLTabBarViewController
+ (void)initialize
{
    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tabbar_background"]];
    
    // 通过appearance统一设置所有UITabBarItem的文字属性
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = kTabBarItemFontSize;
    attrs[NSForegroundColorAttributeName] = kTabBarItemFontColorNormal;
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = kTabBarItemFontColorSelected;
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 添加子控制器
    [self setupChildVc:[[LLHomeViewController alloc] init] title:@"首页" image:@"home_normal" selectedImage:@"home_selected"];
    
    _messageVC = [[LLMessageViewController alloc] init];
    [self setupChildVc:_messageVC title:@"消息" image:@"message_normal" selectedImage:@"message_selected"];
    
    [self setupChildVc:[[LLDataViewController alloc] init] title:@"数据" image:@"find_normal" selectedImage:@"find_selected"];
    
    [self setupChildVc:[[LLMeViewController alloc] init] title:@"我的" image:@"me_normal" selectedImage:@"me_selected"];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // 设置提醒badge
    __weak typeof(LLMessageViewController *) weakMessageVC = _messageVC;
    //todo aihua
//    [[HMOpenIMManager sharedInstance].ywIMKit setUnreadCountChangedBlock:^(NSInteger aCount) {
//        NSString *badgeValue = aCount > 0 ?[ @(aCount) stringValue] : nil;
//        weakMessageVC.tabBarItem.badgeValue = badgeValue;
//
//        [UIApplication sharedApplication].applicationIconBadgeNumber = [badgeValue integerValue];
//    }];
}

/**
 * 初始化子控制器
 */
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置文字和图片
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    
    vc.tabBarItem.image = [UIImage imageNamedForOriginal:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamedForOriginal:selectedImage];
    vc.tabBarItem.tag = self.viewControllers.count;
    
    // 包装一个导航控制器, 添加导航控制器为tabbarcontroller的子控制器
    LLNavigationViewController *nav = [[LLNavigationViewController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}
// 重写setSelectedIndex
- (void)setSelectedIndex:(NSUInteger)selectedIndex
{
    [super setSelectedIndex:selectedIndex];
    if (selectedIndex == 0) {
        [self tabBar:self.tabBar didSelectItem:[self.tabBar.items objectAtIndex:0]];
    }
}

#pragma mark tabbar代理方法
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotification_SelectedTabbarController object:item];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
