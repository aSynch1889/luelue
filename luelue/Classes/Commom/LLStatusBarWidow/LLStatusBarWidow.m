//
//  LLStatusBarWidow.m
//  luelue
//
//  Created by aaaa on 2017/10/11.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//

#import "LLStatusBarWidow.h"
#import "LLTopWindowViewController.h"

static UIWindow *topWindow_;

@implementation LLStatusBarWidow

// 显示自定义状态栏窗口
+ (void)show
{
    if (topWindow_ == nil) {
        topWindow_ = [[UIWindow alloc] init];
        topWindow_.frame = [UIApplication sharedApplication].statusBarFrame;
        topWindow_.windowLevel = UIWindowLevelAlert;
        topWindow_.rootViewController = [[LLTopWindowViewController alloc] init];
        topWindow_.backgroundColor = [UIColor clearColor];
        
        [topWindow_ addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(windowClick)]];
    }
    topWindow_.hidden = NO;
    LLTopWindowViewController *TopWindowViewController = (LLTopWindowViewController *)topWindow_.rootViewController;
    if ([TopWindowViewController isKindOfClass:[LLTopWindowViewController class]]) {
        TopWindowViewController.statusBarHidden = NO;
    }
    
}

// 隐藏自定义状态栏窗口
+ (void)hide
{
    LLTopWindowViewController *TopWindowViewController = (LLTopWindowViewController *)topWindow_.rootViewController;
    if ([TopWindowViewController isKindOfClass:[LLTopWindowViewController class]]) {
        TopWindowViewController.statusBarHidden = YES;
    }
}

+ (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle
{
    LLTopWindowViewController *TopWindowViewController = (LLTopWindowViewController *)topWindow_.rootViewController;
    if ([TopWindowViewController isKindOfClass:[LLTopWindowViewController class]]) {
        TopWindowViewController.statusBarStyle = statusBarStyle;
    }
}
/**
 * 监听窗口点击
 */
+ (void)windowClick
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [self searchScrollViewInView:window];
}

+ (void)searchScrollViewInView:(UIView *)superview
{
    for (UIScrollView *subview in superview.subviews) {
        // 如果是scrollview, 滚动最顶部
        if ([subview isKindOfClass:[UIScrollView class]] && subview.isShowingOnKeyWindow) {
            CGPoint offset = subview.contentOffset;
            offset.y = - subview.contentInset.top;
            [subview setContentOffset:offset animated:YES];
        }
        
        // 继续查找子控件
        [self searchScrollViewInView:subview];
    }
}

@end
