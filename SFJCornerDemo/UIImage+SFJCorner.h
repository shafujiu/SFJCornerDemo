//
//  UIImage+SFJCorner.h
//  SFJImageCategoryDemo
//
//  Created by 沙缚柩 on 2017/5/17.
//  Copyright © 2017年 沙缚柩. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (SFJCorner)

/**
 *  @brief 生成一张新的圆角图片
 *  @param cornerRadius 圆角大小 超过图片大小的一半，按照一半计算
 */
- (UIImage *)cornerImageWithCornerRadius:(CGFloat)cornerRadius;
/**
 *  @brief 生成一张新的部分圆角图片
 *  @param corner 圆角位置
 *  @param cornerRadii 圆角大小 超过图片大小的一半，按照一半计算
 */
- (UIImage *)cornerImageWithRectCorner:(UIRectCorner)corner cornerRadii:(CGSize)cornerRadii;
/**
 *  @brief 剪切圆
 */
- (UIImage *)circleImage;

@end
