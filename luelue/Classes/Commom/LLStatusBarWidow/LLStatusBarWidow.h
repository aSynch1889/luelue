//
//  LLStatusBarWidow.h
//  luelue
//
//  Created by aaaa on 2017/10/11.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

// 自定义状态栏窗口
@interface LLStatusBarWidow : NSObject
// 显示自定义状态栏窗口
+ (void)show;

// 隐藏自定义状态栏窗口
+ (void)hide;

// 设置状态栏样式
+ (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle;
//+ (void)setStatusBarHidden:(BOOL)statusBarHidden;
@end
