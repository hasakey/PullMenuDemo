//
//  PullMenuCell.h
//  PullMenuDemo
//
//  Created by 丁巍巍 on 2019/1/30.
//  Copyright © 2019年 丁巍巍. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PullMenuModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PullMenuCell : UITableViewCell
@property (strong, nonatomic) UIImageView *menuImageView;
@property (strong, nonatomic) UILabel *menuTitleLab;
/**
 *  model
 */
@property (nonatomic, strong) PullMenuModel *menuModel;
/**
 * 最后一栏cell
 */
@property (nonatomic, assign) BOOL isFinalCell;
/**
 *  pullMenu样式
 */
@property (nonatomic, assign) PullMenuStyle pullMenuStyle;




@end

NS_ASSUME_NONNULL_END
