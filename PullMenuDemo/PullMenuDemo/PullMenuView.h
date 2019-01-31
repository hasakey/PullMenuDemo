//
//  PullMenuView.h
//  PullMenuDemo
//
//  Created by 丁巍巍 on 2019/1/30.
//  Copyright © 2019年 丁巍巍. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PullMenuModel.h"
//selected
typedef void(^BlockSelectedMenu)(NSInteger menuRow);
NS_ASSUME_NONNULL_BEGIN

@interface PullMenuView : UIView
/**
 *  文字
 */
@property (nonatomic, copy) NSArray *titleArray;
/**
 *  图片
 */
@property (nonatomic, copy) NSArray *imageArray;
/**
 *  图文Model
 */
@property (nonatomic, copy) NSArray<PullMenuModel *> *menuArray;
/**
 *  蒙层背景color
 */
@property (nonatomic, strong) UIColor *coverBgColor;
/**
 *  主样式color
 */
@property (nonatomic, strong) UIColor *menuBgColor;
/**
 *  cel高度
 */
@property (nonatomic, assign) CGFloat menuCellHeight;
/**
 *  table最大高度限制
 *  默认：5 * cellHeight
 */
@property (nonatomic, assign) CGFloat menuMaxHeight;
/**
 *  小三角高度
 *  45°等腰三角形
 */
@property (nonatomic, assign) CGFloat triangleHeight;
/**
 *  pullMenu样式
 */
@property (nonatomic, assign) PullMenuStyle pullMenuStyle;
/**
 *  click
 */
@property (nonatomic, copy) BlockSelectedMenu blockSelectedMenu;
/**
 *  anchorView：下拉依赖视图[推荐初始化]
 *  箭头指向依赖视图
 *  titleArray:文字
 *  imageArray:icon
 *  menuArray:图文Model
 */
+ (instancetype)pullMenuAnchorView:(UIView *)anchorView;
+ (instancetype)pullMenuAnchorView:(UIView *)anchorView titleArray:(NSArray *)titleArray;
+ (instancetype)pullMenuAnchorView:(UIView *)anchorView titleArray:(NSArray *)titleArray imageArray:(NSArray *)imageArray;
+ (instancetype)pullMenuAnchorView:(UIView *)anchorView menuArray:(NSArray<PullMenuModel *> *)menuArray;

@end

NS_ASSUME_NONNULL_END
