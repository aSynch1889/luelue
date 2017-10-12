//
//  LLMeViewController.m
//  luelue
//
//  Created by aaaa on 2017/10/11.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//

#import "LLMeViewController.h"
#import "LLOperationInfoTableViewController.h"

@interface LLMeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *meTableView;

@end

@implementation LLMeViewController
{
    NSArray *_titleArr;
    NSArray *_imageArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.meTableView.delegate = self;
    self.meTableView.dataSource = self;
    _titleArr = @[@"运营信息",@"个人资料",@"账号安全",@"客户管理",@"关于我们"];
    _imageArr = @[@"operationInfo",@"userInfo",@"accountSecurity",@"customerManagement",@"about",];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *cellId = @"cellId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    if (indexPath.section == 0) {
        
    }else if (indexPath.section == 1) {
        cell.textLabel.text = [_titleArr objectAtIndex:indexPath.row];
        cell.imageView.image = [UIImage imageNamed:[_imageArr objectAtIndex:indexPath.row]];
    }else if (indexPath.section == 2) {
        cell.textLabel.text = @"退出登录";
    }

    return cell;
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 1) {
        return _titleArr.count;
    }
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 3;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //点击数据行查看详情
    if (indexPath.section == 0) {
        
    }else if (indexPath.section == 1){
        if (indexPath.row == 0) {
            LLOperationInfoTableViewController *operationInfoTableView = [[LLOperationInfoTableViewController alloc] init];
            [self.navigationController pushViewController:operationInfoTableView animated:YES];
            
        }else if (indexPath.row == 1) {
            
        }else if (indexPath.row == 2) {
            
        }else if (indexPath.row == 3) {
            
        }else if (indexPath.row == 4) {
            
        }
        
    }else if (indexPath.section == 2) {
        
    }
}


@end
