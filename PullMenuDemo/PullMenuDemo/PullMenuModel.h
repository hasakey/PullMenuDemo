//
//  PullMenuModel.h
//  PullMenuDemo
//
//  Created by 丁巍巍 on 2019/1/30.
//  Copyright © 2019年 丁巍巍. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(int, PullMenuStyle) {
    PullMenuDarkStyle = 0,  //类微信、黑底白字
    PullMenuLightStyle      //类支付宝、白底黑字
};

NS_ASSUME_NONNULL_BEGIN

@interface PullMenuModel : NSObject
/**
 * 文字
 */
@property (nonatomic, copy) NSString *title;
/**
 * 图片
 */
@property (nonatomic, copy) NSString *imageName;
@end

NS_ASSUME_NONNULL_END
