//
//  UIConstant.h
//  luelue
//
//  Created by aaaa on 2017/10/11.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//
/**
 *  UI的宏（样式、皮肤、等）
 */
#ifndef UIConstant_h
#define UIConstant_h

// ***************** 尺寸 **********************************

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

#define kSCREEN_BOUNDS ([UIScreen mainScreen].bounds)
#define kSCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define kSCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define kSCREEN_MAX_LENGTH (MAX(kSCREEN_WIDTH, kSCREEN_HEIGHT))
#define kSCREEN_MIN_LENGTH (MIN(kSCREEN_WIDTH, kSCREEN_HEIGHT))

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && kSCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && kSCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && kSCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && kSCREEN_MAX_LENGTH == 736.0)


#define kStatusBarHeight 20.0
#define kNavBarHeight 64.0
#define kTabbarHeight 49.0

// ***************** 定义font的size *************************
#define LLFontSize(size) [UIFont systemFontOfSize:(size)]
#define LLFontSizeBlod(size) [UIFont boldSystemFontOfSize:(size)]

// ***************** 颜色 ***********************************
#define LLRGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
#define LLRGB(r, g, b) LLRGBACOLOR(r, g, b, 1.0f)

// 16进制色值参数转换
#define LLUIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

// 全局
#define LLNavBgColor LLRGB(255, 48, 48)
#define LLMainlColor LLRGB(51,199,116) // 全局主色调
#define LLMainlColorFrosted LLMainlColor  // 磨砂效果
#define LLBackgroundColor LLRGB(242,242,242) //全局背景色
#define LLContraColor LLRGB(254,145,146)  // 本项目通用粉红色

#define kProjectIconTitColor LLRGB(60, 198, 119)   // 项目图标绿色

// 常用黑色
#define kColorBlackPercent80 LLRGB(54, 54, 54)
#define kColorBlackPercent60 LLRGB(103, 103, 103)
#define kColorBlackPercent40 LLRGB(150, 150, 150)
#define kColorBlackPercent20 LLRGB(196, 196, 196)
#define kColorBlackPercent10 LLRGB(246, 246, 246)

//常用文本字符串颜色
#define kColorBlackForText LLRGBACOLOR(92, 92, 92, 1);


//常用红色
#define kColortRed LLRGBACOLOR(255, 131, 131, 1)

// UINavBar
#define kNavBarTitleFontSize [UIFont boldSystemFontOfSize:20]
#define kNavBarTitleFontColor [UIColor whiteColor]

#define kNavBarItemFontSize LLFontSize(17.0)
#define kNavBarItemFontColorNormal [UIColor whiteColor]
#define kNavBarItemFontColorSelected [UIColor lightGrayColor]

#define kNavBarLeftItemButtonContentEdgeInsets UIEdgeInsetsMake(0, 0, 0, 0)
#define kNavBarLeftItemButtonTitleColorNormal [UIColor blackColor]
#define kNavBarLeftItemButtonTitleColorSelected [UIColor redColor]

#define kNavBarRightItemButtonContentEdgeInsets UIEdgeInsetsMake(0, 0, 0, 0)

// UITabBar
#define kTabBarItemFontSize LLFontSize(12.0)
#define kTabBarItemFontColorNormal LLRGBACOLOR(255, 165, 171, 1)
#define kTabBarItemFontColorSelected LLRGBACOLOR(255, 48, 48, 1)

// 键盘
#define kKeyboardToolBarHeight 44.0 // 键盘辅助工具条

// 搜索
#define kSearchBarBgImage [UIImage imageNamed:@"bg_serch"]
#define kSearchIconImage [UIImage imageNamed:@"search"]

// 输入文本框
#define kFieldBorderColor LLMainlColor.CGColor
#define kFieldBorderWidth 0.8
// ***************** 动画 **********************************
#define kAnimateDuration 0.35

// ***************** logo **********************************
#define kLogoForLueLue [UIImage imageNamed:@"logo"]

// ***************** 占位图 **********************************
// 头像占位图
#define kPlaceholderLueLue [UIImage imageNamed:@"icon_Placeholder_LueLue"]
#define kPlaceholder30_30 [UIImage imageNamed:@"icon_Placeholder30_30"]
#define kPlaceholder40_40 [UIImage imageNamed:@"icon_Placeholder40_40"]
#define kPlaceholder42_42 [UIImage imageNamed:@"icon_Placeholder42_42"]
#define kPlaceholder50_50 [UIImage imageNamed:@"icon_Placeholder50_50"]
#define kPlaceholder60_60 [UIImage imageNamed:@"icon_Placeholder60_60"]
#define kPlaceholder90_60 [UIImage imageNamed:@"icon_Placeholder_90_60"]
#define kPlaceholder80_80 [UIImage imageNamed:@"icon_Placeholder80_80"]
#define kPlaceholder120_80 [UIImage imageNamed:@"icon_Placeholder_120_80"]

#define kPlaceholder80_60 [UIImage imageNamed:@"icon_Placeholder_img80x60"]
#define kPlaceholder320_150 [UIImage imageNamed:@"icon_Placeholder_img320x150"]
#define kPlaceholder140_140 [UIImage imageNamed:@"icon_Placeholder_img140x140"]
#define kPlaceholder320_196 [UIImage imageNamed:@"icon_Placeholder_img320x196"]


// ***************** 辅助图 **********************************
#define kAssistAvatorMask [UIImage imageNamed:@"avatorMask"]
#define kAssistAvatorMask_h [UIImage imageNamed:@"avatorMask_h"]

// ***************** 线条 ***********************************
#define kDefaultLineHeight 1.0
#define kDefaultLineColor LLRGB(242, 242, 242)
#define kDefaultLightLineColor LLRGB(229, 229, 229)
#define kDefaultDarkLineColor LLRGB(204, 204, 204)


#endif /* UIConstant_h */
