//
//  UIView+SFJCorner.m
//  SFJImageCategoryDemo
//
//  Created by 沙缚柩 on 2017/5/18.
//  Copyright © 2017年 沙缚柩. All rights reserved.
//

#import "UIView+SFJCorner.h"

@implementation UIView (SFJCorner)

- (void)setCornerRadius:(CGFloat)radius withCorners:(UIRectCorner)corners{
    CGSize size = CGSizeMake(radius, radius);
    [self setCornerRadii:size byRoundingCorners:corners];
}

- (void)setCornerRadii:(CGSize)radii byRoundingCorners:(UIRectCorner)corners{
    CGRect rect = self.bounds;
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:radii];
    CAShapeLayer *masklayer = [[CAShapeLayer alloc]init];//创建shapelayer
    masklayer.frame = rect;
    masklayer.path = path.CGPath;//设置路径
    self.layer.mask = masklayer;
}

- (void)setCornerRadius:(CGFloat)radius{
    CGRect rect = self.bounds;
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius];
    CAShapeLayer *masklayer = [[CAShapeLayer alloc]init];//创建shapelayer
    masklayer.frame = rect;
    masklayer.path = path.CGPath;//设置路径
    self.layer.mask = masklayer;
}


@end
