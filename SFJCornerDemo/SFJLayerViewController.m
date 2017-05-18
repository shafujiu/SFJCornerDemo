//
//  SFJLayerViewController.m
//  SFJImageCategoryDemo
//
//  Created by 沙缚柩 on 2017/5/18.
//  Copyright © 2017年 沙缚柩. All rights reserved.
//

#import "SFJLayerViewController.h"
#import "UIView+SFJCorner.h"

@interface SFJLayerViewController ()
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UIView *view2;
@end

@implementation SFJLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_view1 setCornerRadius:20];
    [_label setCornerRadius:20];
    [_btn setCornerRadius:20];
    [_imgView setCornerRadius:20];
    
    [_view2 setCornerRadius:20 withCorners:UIRectCornerTopRight|UIRectCornerBottomLeft];
}


@end
