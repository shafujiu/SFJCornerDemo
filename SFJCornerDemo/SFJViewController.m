//
//  SFJViewController.m
//  SFJImageCategoryDemo
//
//  Created by 沙缚柩 on 2017/5/18.
//  Copyright © 2017年 沙缚柩. All rights reserved.
//

#import "SFJViewController.h"

@interface SFJViewController ()

@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation SFJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _view1.layer.cornerRadius = 20;
    _btn.layer.cornerRadius = 20;
    
    _label.layer.cornerRadius = 20;
    _label.layer.masksToBounds = YES;
    
    _imgView.layer.cornerRadius = 20;
    _imgView.clipsToBounds = YES;
}

- (void)setViewCornerRadius:(UIView *)view{
    CGRect rect = view.bounds;
    CGSize radio = CGSizeMake(30, 30);//圆角尺寸
    UIRectCorner corner = UIRectCornerTopLeft|UIRectCornerTopRight;//这只圆角位置
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corner cornerRadii:radio];
    CAShapeLayer *masklayer = [[CAShapeLayer alloc]init];//创建shapelayer
    masklayer.frame = view.bounds;
    masklayer.path = path.CGPath;//设置路径
    view.layer.mask = masklayer;
}

@end
