//
//  ChatListViewController.m
//  luelue
//
//  Created by aaaa on 2017/10/11.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//

#import "ChatListViewController.h"

@interface ChatListViewController ()

@end

@implementation ChatListViewController

- (instancetype)init{
    self = [super init];
    if (self) {
        [self setDisplayConversationTypes:@[@(ConversationType_PRIVATE),
                                            @(ConversationType_DISCUSSION),
                                            @(ConversationType_CHATROOM),
                                            @(ConversationType_GROUP),
                                            @(ConversationType_APPSERVICE),
                                            @(ConversationType_SYSTEM)
                                            ]];
        [self setCollectionConversationType:@[@(ConversationType_PRIVATE)]];
        
//        [self setCollectionConversationType:@[@(ConversationType_DISCUSSION),@(ConversationType_GROUP)]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//重写RCConversationListViewController的onSelectedTableRow事件
- (void)onSelectedTableRow:(RCConversationModelType)conversationModelType
         conversationModel:(RCConversationModel *)model
               atIndexPath:(NSIndexPath *)indexPath {
    //区分是否聚合显示
    if (conversationModelType == RC_CONVERSATION_MODEL_TYPE_COLLECTION) {
        ChatListViewController *temp = [[ChatListViewController alloc] init];
        
        NSArray *array = [NSArray arrayWithObject:[NSNumber numberWithInt:model.conversationType]];
        [temp setDisplayConversationTypes:array];
        [temp setCollectionConversationType:nil];
        temp.isEnteredToCollectionViewController = YES;
    
        [self.navigationController pushViewController:temp animated:YES];
    
    } else if (model.conversationType == ConversationType_PRIVATE) {
        RCConversationViewController *conversationVC = [[RCConversationViewController alloc]init];
        conversationVC.conversationType = model.conversationType;
        conversationVC.targetId = model.targetId;
        conversationVC.title = @"想显示的会话标题";
        [self.navigationController pushViewController:conversationVC animated:YES];
        
    }

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
