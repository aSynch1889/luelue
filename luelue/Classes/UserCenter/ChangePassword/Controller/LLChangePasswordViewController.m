//
//  LLChangePasswordViewController.m
//  luelue
//
//  Created by aaaa on 2017/10/12.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//

#import "LLChangePasswordViewController.h"

@interface LLChangePasswordViewController ()
@property (weak, nonatomic) IBOutlet UILabel *accountLabel;//登录的账号
@property (weak, nonatomic) IBOutlet UITextField *oldPwdTextField;//旧密码
@property (weak, nonatomic) IBOutlet UITextField *PwdTextField;//新密码
@property (weak, nonatomic) IBOutlet UITextField *confirmPwdTextField;//确认新密码
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;//提交

@end

@implementation LLChangePasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
