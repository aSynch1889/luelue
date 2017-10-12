//
//  LLRegisterViewController.m
//  luelue
//
//  Created by aaaa on 2017/10/12.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//

#import "LLRegisterViewController.h"

@interface LLRegisterViewController ()
@property (weak, nonatomic) IBOutlet UITextField *accountTextField;//账号
@property (weak, nonatomic) IBOutlet UITextField *verfyCodeTextField;//验证码
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;//密码
@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordTextField;//再次输入密码
@property (weak, nonatomic) IBOutlet UIButton *getVerfyCodeBtn;//获取验证码
@property (weak, nonatomic) IBOutlet UIButton *registerBtn;//注册

@end

@implementation LLRegisterViewController

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
