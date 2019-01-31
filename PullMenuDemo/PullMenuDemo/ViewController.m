//
//  ViewController.m
//  PullMenuDemo
//
//  Created by 丁巍巍 on 2019/1/30.
//  Copyright © 2019年 丁巍巍. All rights reserved.
//

#import "ViewController.h"
#import "PullMenuView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
//    [self configNav];

}

#pragma mark - config
- (void)configNav {
    self.title = @"菜单";
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [rightBtn setImage:[UIImage imageNamed:@"ap_more"] forState:UIControlStateNormal];
    [rightBtn setTitle:@"菜单" forState:UIControlStateNormal];
    [rightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(actionCreateBtn:) forControlEvents:UIControlEventTouchUpInside];
    [rightBtn sizeToFit];
    UIBarButtonItem *rightItemBtn = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
    self.navigationItem.rightBarButtonItems = @[rightItemBtn];
}

#pragma mark - actionFunction
- (void)actionCreateBtn:(id)sender{
    PullMenuView *menuView = [PullMenuView pullMenuAnchorView:sender titleArray:@[@"2017年09月",
                                                                                      @"2017年08月",
                                                                                      @"2017年07月",
                                                                                      @"2017年06月",
                                                                                      @"2017年05月",
                                                                                      @"2017年04月",
                                                                                      @"2017年03月",
                                                                                      @"2017年02月",
                                                                                      @"2017年01月"]];
    menuView.pullMenuStyle = PullMenuLightStyle;
    menuView.blockSelectedMenu = ^(NSInteger menuRow) {
        NSLog(@"action----->%ld",(long)menuRow);
    };
    
//    NSArray *titleArray = @[@"发起群聊",@"添加朋友",@"扫一扫",@"收付款"];
//    NSArray *imageArray = @[@"contacts_add_newmessage_30x30_",
//                            @"contacts_add_friend_30x30_",
//                            @"contacts_add_scan_30x30_",
//                            @"contacts_add_scan_30x30_"];
//    [PullMenuView pullMenuAnchorView:sender
//                            titleArray:titleArray
//                            imageArray:imageArray];
}


@end
