//
//  ViewController.m
//  SFJImageCategoryDemo
//
//  Created by 沙缚柩 on 2017/5/17.
//  Copyright © 2017年 沙缚柩. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+SFJCorner.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UIImageView *imgView2;
@property (weak, nonatomic) IBOutlet UIImageView *circleImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 正常
    UIImage *img = [UIImage imageNamed:@"bg"];
    _imgView.image = img;
    
    UIImage *circleImg = [img cornerImageWithRectCorner:UIRectCornerTopLeft cornerRadii:CGSizeMake(30, 30)];
    // 部分圆角
    _imgView2.image = circleImg;
    
    // 圆
    _circleImageView.image = [img circleImage];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
