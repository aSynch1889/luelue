//
//  LLLoginViewController.m
//  luelue
//
//  Created by aaaa on 2017/10/12.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//

#import "LLLoginViewController.h"

@interface LLLoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *accountTextField;//账号
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;//密码
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;//登录
@property (weak, nonatomic) IBOutlet UIButton *experienceBtn;//体验
@property (weak, nonatomic) IBOutlet UIButton *registerBtn;//注册

@end

@implementation LLLoginViewController

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
