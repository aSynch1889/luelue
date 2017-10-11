//
//  LLMessageViewController.m
//  luelue
//
//  Created by aaaa on 2017/10/11.
//  Copyright © 2017年 aaaa Co.,Ltd. All rights reserved.
//

#import "LLMessageViewController.h"
#import "ChatListViewController.h"

@interface LLMessageViewController ()

@end

@implementation LLMessageViewController

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
@end
