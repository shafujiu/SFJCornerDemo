# SFJCornerDemo
圆角实现的三种方式

# 图片的圆角通常有三种实现方式。

1. 通过layer图层来实现，通过渲染图层实现圆角,这里又有两种方式
- 通过自身的layer属性实现。
- 通过添加圆角的一个CAShapeLayer图层实现。
2. 如果是UIImage对象的话，我们可以对图片进行裁剪，然后生成新的图片。最后在用UIImageView显示。


## 最常用的方式 我们通常是设置layer.cornerRadius

```Objective-c
_view1.layer.cornerRadius = 20;
_btn.layer.cornerRadius = 20;
    
_label.layer.cornerRadius = 20;
_label.layer.masksToBounds = YES;
    
_imgView.layer.cornerRadius = 20;
_imgView.clipsToBounds = YES;
```

> 1. UIView,UIButton 控件直接设置圆角就有直观的效果
> 2. UILabel,UIImageView控件直接设置圆角是没有直观效果的。
> 3. UILabel,UIImageView控件需要设置控件的`clipsToBounds = YES` 属性为YES，或者`layer.masksToBounds = YES`,才有效果。

需要引起注意的是：`clipsToBounds masksToBounds` 会造成离屏渲染，异常损耗资源，会出现屏幕卡顿的情况。可以设置上
```Objective-c
self.layer.shouldRasterize = YES;
self.layer.rasterizationScale = [UIScreen mainScreen].scale;
```
这是将我们渲染的缓存起来。 但是这样会占用缓存空间，所以得折中考虑。而且也仅仅是大量离屏渲染才会造成卡顿。

## mask
本位提供了一个分类 实现mask 生成圆角，或者部分圆角，建议采用部分圆角就行了，因为layer的方式没办法解决部分圆角的问题。
```Objective-c
- (void)setCornerRadius:(CGFloat)radius;
- (void)setCornerRadius:(CGFloat)radius withCorners:(UIRectCorner)corners;
```

## 图片圆角 
这种方式并没有对控件做处理，而是生成了圆角的图片
```Objective-c
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
```

## 总结

实现圆角cornerRadius要比mask高效很多。
Rasterize在大部分情况下极大减少GPU工作。但是相应的会消耗一定得缓存，如果缓存允许的情况下，采用缓存是可以的。对于大量图片圆角的处理，完全可以考虑采用画布重新绘制新的图片。
