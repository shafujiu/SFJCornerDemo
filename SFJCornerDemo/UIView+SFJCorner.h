//
//  UIView+SFJCorner.h
//  SFJImageCategoryDemo
//
//  Created by 沙缚柩 on 2017/5/18.
//  Copyright © 2017年 沙缚柩. All rights reserved.
//  通过layer.mask 实现视图圆角

#import <UIKit/UIKit.h>

@interface UIView (SFJCorner)
// 不建议采用 可以使用layer.cornerRadiu代替
- (void)setCornerRadius:(CGFloat)radius;

// 快速实现部分圆角
- (void)setCornerRadius:(CGFloat)radius withCorners:(UIRectCorner)corners;

@end
