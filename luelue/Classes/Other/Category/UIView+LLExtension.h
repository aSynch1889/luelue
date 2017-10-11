//
//  UIView+LLExtension.h
//  luelue
//
//  Created by aaaa on 2017/10/11.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LLExtension)
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;

@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

/**
 *    删除所有子对象
 */
- (void)removeAllSubviews;

/**
 * 判断一个控件是否真正显示在主窗口
 */
- (BOOL)isShowingOnKeyWindow;

/**
 *  快速返回对应的Xib
 *
 *  @return Xib转换后的View
 */
+ (instancetype)viewFromXib;
@end
