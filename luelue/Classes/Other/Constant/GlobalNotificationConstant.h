//
//  GlobalNotificationConstant.h
//  luelue
//
//  Created by aaaa on 2017/10/11.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//
/**
 *  全局通知宏 统一以“kNotification_”为前缀
 */
#ifndef GlobalNotificationConstant_h
#define GlobalNotificationConstant_h

// 切换tabbarController
#define kNotification_SelectedTabbarController @"kNotification_SelectedTabbarController"

// 登录状态改变 [note.object boolValue] YES为成功 NO为登录失败
#define kNotification_LoginStateChange @"kNotification_LoginStateChange"

// 展示登录控制器
#define kNotification_NeedLogin @"kNotification_NeedLogin"
// 个人资料变更
#define kNotification_DidUpdateProfile @"kNotification_DidUpdateProfile"

/****************************** OpenIM ************************************/

// 更新群聊信息
#define kNotification_UpdateTribeInfo @"kNotification_UpdateTribeInfo"
// 更新添加成员列表
#define kNotification_AddTribeMembers @"kNotification_AddTribeMembers"
// IM登录状态改变的通知(NO 代表被下线)
#define kNotification_IMLoginChangeNotification @"kNotification_IMLoginChangeNotification"
// 展示用户信息
//#define kNotification_IMShowMemberInfo @"kNotification_IMShowMemberInfo"
// 更新好友列表
#define kNotification_IMDidUpdateContactList @"kNotification_IMDidUpdateContactList"


/************************** 微信 *****************************************/
// 微信登录
#define kNotification_WXLoginDic @"kNotification_WXLoginDic"
// 微信支付
#define kNotification_WXPayResult   @"kNotification_WXPayResult"


/************************** 数据 *****************************************/
// 更新数据
#define kNotification_UpdatePlaceList @"kNotification_UpdatePlaceList"

#endif /* GlobalNotificationConstant_h */
