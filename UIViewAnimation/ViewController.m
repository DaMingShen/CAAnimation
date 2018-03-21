//
//  ViewController.m
//  UIViewAnimation
//
//  Created by 万众科技 on 16/4/19.
//  Copyright © 2016年 万众科技. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *cartCenter;
@property (weak, nonatomic) IBOutlet UIImageView *raffle;
@property (weak, nonatomic) IBOutlet UIImageView *centerShow;
@property (nonatomic, strong) CALayer * subLayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.3975 green:0.7272 blue:0.6268 alpha:1.0];
    
    self.subLayer = [[CALayer alloc] init];
    self.subLayer.frame = CGRectMake(150, 150, 30, 30);
    self.subLayer.backgroundColor = [[UIColor redColor] CGColor];
    [self.view.layer addSublayer:self.subLayer];
}

- (void)keyPathList {
    //CATransform3D Key Paths : (example)transform.rotation.z
    //rotation.x
    //rotation.y
    //rotation.z
    //rotation 旋轉
    //scale.x
    //scale.y
    //scale.z
    //scale 缩放
    //translation.x
    //translation.y
    //translation.z
    //translation 平移
    
    //CGPoint Key Paths : (example)position.x
    //x
    //y
    
    //CGRect Key Paths : (example)bounds.size.width
    //origin.x
    //origin.y
    //origin
    //size.width
    //size.height
    //size
    
    //opacity = 透明度
    //backgroundColor
    //cornerRadius 圆角
    //borderWidth
    //contents 图层显示内容，例如可以将图片作为图层内容显示
    
    //Shadow Key Path:
    //shadowColor 阴影颜色
    //shadowOffset 阴影偏移量
    //shadowOpacity 阴影透明度
    //shadowRadius 阴影模糊半径
    
}



#pragma mark - CATransform3D
- (void)combine {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform"];
    ani.duration = 2.0;
    ani.toValue = [NSValue valueWithCATransform3D:CATransform3DConcat(CATransform3DMakeRotation(M_PI, 1.0, 0.f, 0.f), CATransform3DConcat(CATransform3DMakeTranslation(100, -100, 0.f), CATransform3DMakeScale(0.7, 0.7, 1.0)))];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"transformCombineAni"];
}

- (void)translation {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform"];
    ani.duration = 0.5;
    ani.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeTranslation(0.f, -50, 0.f)];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"translationAni"];
}

- (void)scale {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform"];
    ani.duration = 0.5;
    ani.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.7, 0.7, 1.0)];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"scaleAni"];
}

- (void)rotation {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform"];
    ani.duration = 1.0;
    ani.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI, 1.0, 0.f, 0.f)];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"rotationAni"];
}

- (void)rotationX {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
    ani.duration = 1.0;
    ani.toValue = [NSNumber numberWithFloat:M_PI];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"rotationXAni"];
}

- (void)rotationY {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    ani.duration = 1.0;
    ani.toValue = [NSNumber numberWithFloat:M_PI];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"rotationYAni"];
}

- (void)rotationZ {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    ani.duration = 1.0;
    ani.toValue = [NSNumber numberWithFloat:M_PI];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"rotationZAni"];
}

#pragma mark - position
- (void)position {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"position"];
    ani.toValue = [NSValue valueWithCGPoint:self.centerShow.center];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.cartCenter.layer addAnimation:ani forKey:@"PostionAni"];
}

- (void)positionX {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"position.x"];
    ani.toValue = [NSNumber numberWithFloat:self.centerShow.center.x];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.cartCenter.layer addAnimation:ani forKey:@"PostionXAni"];
}

- (void)positionY {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"position.y"];
    ani.toValue = [NSNumber numberWithFloat:self.centerShow.center.y];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.cartCenter.layer addAnimation:ani forKey:@"PostionYAni"];
}

#pragma mark - bounds
- (void)bounds {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"bounds"];
    ani.toValue = [NSValue valueWithCGRect:self.cartCenter.bounds];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"boundsAni"];
}

- (void)size {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"bounds.size"];
    ani.toValue = [NSValue valueWithCGSize:self.cartCenter.bounds.size];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"sizeAni"];
}

- (void)sizeW {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"bounds.size.width"];
    ani.toValue = [NSNumber numberWithFloat:self.cartCenter.bounds.size.width];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"sizeWAni"];
}

- (void)sizeH {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"bounds.size.height"];
    ani.toValue = [NSNumber numberWithFloat:self.cartCenter.bounds.size.height];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"sizeHAni"];
}

#pragma mark - opacity
- (void)opacity {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"opacity"];
    ani.toValue = [NSNumber numberWithFloat:0.f];
    ani.duration = 2.0;
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"opacityAni"];
}

#pragma mark - backgroundColor
- (void)backgroundColor {
    self.centerShow.image = nil;
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    ani.duration = 2.0;
    ani.toValue = (id)[UIColor colorWithRed:0.399 green:0.4804 blue:0.9887 alpha:1.0].CGColor;
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"backgroundColorAni"];
}

#pragma mark - cornerRadius 
- (void)cornerRadius {
    self.centerShow.layer.masksToBounds = YES;
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    ani.duration = 2.0;
    ani.toValue = [NSNumber numberWithFloat:self.centerShow.bounds.size.height / 2];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"cornerRadiusAni"];
}

#pragma mark - borderWidth
- (void)borderWidth {
    self.centerShow.layer.masksToBounds = YES;
    self.centerShow.layer.cornerRadius = self.centerShow.bounds.size.height / 2;
    self.centerShow.layer.borderColor = [UIColor colorWithRed:0.3499 green:0.5986 blue:1.0 alpha:1.0].CGColor;
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"borderWidth"];
    ani.duration = 2.0;
    ani.toValue = [NSNumber numberWithFloat:5.0];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"borderWidthAni"];
}

#pragma mark - contents
- (void)contents {
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"contents"];
    ani.duration = 2.0;
    ani.toValue = (id)[UIImage imageNamed:@"Raffle"].CGImage;
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"contentsAni"];
}



#pragma mark - shadowColor
- (void)shadowColor {
    self.centerShow.layer.shadowOpacity = 1.0;
    self.centerShow.layer.shadowColor = [UIColor colorWithRed:0.702 green:0.702 blue:0.702 alpha:1.0].CGColor;
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"shadowColor"];
    ani.duration = 2.0;
    ani.toValue = (id)[UIColor colorWithRed:0.0 green:0.502 blue:1.0 alpha:1.0].CGColor;
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"shadowColorAni"];
}

#pragma mark - shadowOffset
- (void)shadowOffset {
    self.centerShow.layer.shadowOpacity = 1.0;
    self.centerShow.layer.shadowColor = [UIColor colorWithRed:0.502 green:0.0 blue:1.0 alpha:1.0].CGColor;
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"shadowOffset"];
    ani.duration = 2.0;
    ani.toValue = [NSValue valueWithCGSize:CGSizeMake(3,3)];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"shadowOffsetAni"];
}

#pragma mark - shadowOpacity
- (void)shadowOpacity {
    self.centerShow.layer.shadowColor = [UIColor colorWithRed:0.502 green:0.0 blue:1.0 alpha:1.0].CGColor;
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
    ani.duration = 2.0;
    ani.fromValue = [NSNumber numberWithFloat:0.f];
    ani.toValue = [NSNumber numberWithFloat:1.0];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"shadowOpacityAni"];
}

#pragma mark - shadowRadius
- (void)shadowRadius {
    self.centerShow.layer.shadowRadius = 0.f;
    self.centerShow.layer.shadowOpacity = 1.0;
    self.centerShow.layer.shadowColor = [UIColor redColor].CGColor;
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"shadowRadius"];
    ani.duration = 2.0;
    ani.toValue = [NSNumber numberWithFloat:5.0];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.centerShow.layer addAnimation:ani forKey:@"shadowRadiusAni"];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self transaction];
}

#pragma mark - CATransaction 
- (void)transaction {
    
    
    [CATransaction begin];
    [CATransaction setAnimationDuration:2.0];
    [CATransaction setAnimationTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
//    [CATransaction setDisableActions:YES];
    self.cartCenter.layer.bounds = self.centerShow.layer.bounds;
    [CATransaction commit];
}

#pragma mark - KeyframeAni
- (void)valueKeyframeAni {
    CAKeyframeAnimation * ani = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    ani.duration = 4.0;
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    NSValue * value1 = [NSValue valueWithCGPoint:CGPointMake(150, 200)];
    NSValue *value2=[NSValue valueWithCGPoint:CGPointMake(250, 200)];
    NSValue *value3=[NSValue valueWithCGPoint:CGPointMake(250, 300)];
    NSValue *value4=[NSValue valueWithCGPoint:CGPointMake(150, 300)];
    NSValue *value5=[NSValue valueWithCGPoint:CGPointMake(150, 200)];
    ani.values = @[value1, value2, value3, value4, value5];
    [self.centerShow.layer addAnimation:ani forKey:@"PostionKeyframeValueAni"];
}

- (void)pathKeyframeAni {
    CAKeyframeAnimation * ani = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddEllipseInRect(path, NULL, CGRectMake(130, 200, 100, 100));
    ani.path = path;
    CGPathRelease(path);
    ani.duration = 4.0;
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    [self.centerShow.layer addAnimation:ani forKey:@"PostionKeyframePathAni"];
}

#pragma mark - transitionAni
- (void)transitionAni {
    CATransition * ani = [CATransition animation];
    ani.type = kCATransitionReveal;
    ani.subtype = kCATransitionFromLeft;
    ani.duration = 1.5;
    self.centerShow.image = [UIImage imageNamed:@"Raffle"];
    [self.centerShow.layer addAnimation:ani forKey:@"transitionAni"];
}

#pragma mark - groupAni
- (void)groupAni {
    CABasicAnimation * posAni = [CABasicAnimation animationWithKeyPath:@"position"];
    posAni.toValue = [NSValue valueWithCGPoint:self.centerShow.center];
    
    CABasicAnimation * opcAni = [CABasicAnimation animationWithKeyPath:@"opacity"];
    opcAni.toValue = [NSNumber numberWithFloat:1.0];
    opcAni.toValue = [NSNumber numberWithFloat:0.7];
    
    CABasicAnimation * bodAni = [CABasicAnimation animationWithKeyPath:@"bounds"];
    bodAni.toValue = [NSValue valueWithCGRect:self.centerShow.bounds];
    
    CAAnimationGroup * groupAni = [CAAnimationGroup animation];
    groupAni.animations = @[posAni, opcAni, bodAni];
    groupAni.duration = 1.0;
    groupAni.fillMode = kCAFillModeForwards;
    groupAni.removedOnCompletion = NO;
    groupAni.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.cartCenter.layer addAnimation:groupAni forKey:@"groupAni"];
}

#pragma mark - springAni
//iOS9新加入动画类型
- (void)springAni {
    CASpringAnimation * ani = [CASpringAnimation animationWithKeyPath:@"bounds"];
    ani.mass = 10.0; //质量，影响图层运动时的弹簧惯性，质量越大，弹簧拉伸和压缩的幅度越大
    ani.stiffness = 5000; //刚度系数(劲度系数/弹性系数)，刚度系数越大，形变产生的力就越大，运动越快
    ani.damping = 100.0;//阻尼系数，阻止弹簧伸缩的系数，阻尼系数越大，停止越快
    ani.initialVelocity = 5.f;//初始速率，动画视图的初始速度大小;速率为正数时，速度方向与运动方向一致，速率为负数时，速度方向与运动方向相反
    ani.duration = ani.settlingDuration;
    ani.toValue = [NSValue valueWithCGRect:self.centerShow.bounds];
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.cartCenter.layer addAnimation:ani forKey:@"boundsAni"];
}

#pragma mark - introduce 
- (void)introduce {
    
    /*
     Core Animation(核心动画)是一组功能强大、效果华丽的动画API，无论在iOS系统或者在你开发的App中，都有大量应用。
     核心动画所在的位置如下图所示：
     -----图------
     可以看到，核心动画位于UIKit的下一层，相比UIView动画，它可以实现更复杂的动画效果。
     核心动画作用在CALayer上，实际上，每一个view都有其对应的layer
     @property(nonatomic,readonly,strong)                 CALayer  *layer; 
     CALayer从概念上类似UIView，我们可以将UIView看成是一种特殊的CALayer（可以响应事件），给view加上动画，本质上是对其layer进行操作，因此UIView动画可以看成是对核心动画的封装，和UIView动画不同的是，通过核心动画改变layer的状态（比如position），动画执行完毕后实际上是没有改变的（表面上看起来已改变）。
     总体来说核心动画的优点有：
     1）性能强大，使用硬件加速，可以同时向多个图层添加不同的动画效果
     2）接口易用，只需要少量的代码就可以实现复杂的动画效果。
     3）运行在后台线程中，在动画过程中可以响应交互事件（UIView动画默认动画过程中不响应交互事件）。
     
     核心动画类的层次结构
     ----图片----
     CAAnimation是所有动画对象的父类，实现CAMediaTiming协议，负责控制动画的时间、速度和时间曲线等等，是一个抽象类，不能直接使用。
     CAPropertyAnimation ：是CAAnimation的子类，它支持动画地显示图层的keyPath，一般不直接使用。
     iOS9.0之后新增CASpringAnimation类，它实现弹簧效果的动画，是CABasicAnimation的子类。
     综上，核心动画类中可以直接使用的类有：
     CABasicAnimation
     CAKeyframeAnimation
     CATransition
     CAAnimationGroup
     CASpringAnimation
     
     核心动画类的核心方法
     1.初始化CAAnimation对象
     一般使用animation方法生成实例
     + (instancetype)animation;
     如果是CAPropertyAnimation的子类，还可以通过animationWithKeyPath生成实例
     + (instancetype)animationWithKeyPath:(nullable NSString *)path;
     2.设置动画的相关属性
     设置动画的执行时间，执行曲线，keyPath的目标值，代理等等
     3.动画的添加和移除
     调用CALayer的addAnimation:forKey:方法将动画添加到CALayer中
     - (void)addAnimation:(CAAnimation *)anim forKey:(nullable NSString *)key;
     这样动画就开始执行了
     调用CALayer的removeAnimation方法停止CALayer中的动画
     - (void)removeAnimationForKey:(NSString *)key;
     - (void)removeAllAnimations;

     核心动画类的常用属性
     keyPath：可以指定keyPath为CALayer的属性值，并对它的值进行修改，以达到对应的动画效果，需要注意的是部分属性值是不支持动画效果的。
     以下具有动画效果的keyPath：
     //CATransform3D Key Paths : (example)transform.rotation.z
     //rotation.x
     //rotation.y
     //rotation.z
     //rotation 旋轉
     //scale.x
     //scale.y
     //scale.z
     //scale 缩放
     //translation.x
     //translation.y
     //translation.z
     //translation 平移
     
     //CGPoint Key Paths : (example)position.x
     //x
     //y
     
     //CGRect Key Paths : (example)bounds.size.width
     //origin.x
     //origin.y
     //origin
     //size.width
     //size.height
     //size
     
     //opacity = 透明度
     //backgroundColor
     //cornerRadius 圆角
     //borderWidth
     //contents 图层显示内容，例如可以将图片作为图层内容显示
     
     //Shadow Key Path:
     //shadowColor 阴影颜色
     //shadowOffset 阴影偏移量
     //shadowOpacity 阴影透明度
     //shadowRadius 阴影模糊半径
     
     duration：动画的持续时间
     repeatCount：动画的重复次数
     timingFunction：动画的时间节奏控制
     
     timingFunctionName的enum值如下：
     kCAMediaTimingFunctionLinear 匀速
     kCAMediaTimingFunctionEaseIn 慢进
     kCAMediaTimingFunctionEaseOut 慢出
     kCAMediaTimingFunctionEaseInEaseOut 慢进慢出
     kCAMediaTimingFunctionDefault 默认值（慢进慢出）
     
     
     
     fillMode：视图在非Active时的行为
     removedOnCompletion：动画执行完毕后是否从图层上移除，默认为YES（视图会恢复到动画前的状态），可设置为NO（图层保持动画执行后的状态，前提是fillMode设置为kCAFillModeForwards）
     beginTime：动画延迟执行时间（通过CACurrentMediaTime() + your time 设置）
     delegate：代理
     
     CABasicAnimation
     可以设定keyPath的起点，终点的值，动画会沿着设定点进行移动，CABasicAnimation可以看成是只有两个关键点的特殊的CAKeyFrameAnimation。
     下面以改变视图的position为例演示其使用：
     - (void)position {
     CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"position"];
     ani.toValue = [NSValue valueWithCGPoint:self.centerShow.center];
     ani.removedOnCompletion = NO;
     ani.fillMode = kCAFillModeForwards;
     ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
     [self.cartCenter.layer addAnimation:ani forKey:@"PostionAni"];
     }
     动画效果：
     ---图---
     下面是部分keyPath对应的动画效果（图片名为其对应的keyPath）：
     ---图---
     ---图---
     ---图---
     ---图---
     ---图---

     CAKeyframeAnimation
     可以设定keyPath起点、中间关键点（不止一个）、终点的值，每一帧所对应的时间，动画会沿着设定点进行移动
     CAKeyframeAnimation的重要属性：
     values：关键帧数组对象，里面每一个元素即为一个关键帧，动画会在对应的时间段内，依次执行数组中每一个关键帧的动画。
     path：动画路径对象，可以指定一个路径，在执行动画时路径会沿着路径移动，Path在动画中只会影响视图的Position。
     keyTimes：设置关键帧对应的时间点，范围：0-1。如果没有设置该属性，则每一帧的时间平分。
     下面以让视图绕圈为例演示其使用：
     1、设置values使其沿正方形运动
     --代码--
     动画效果：
     --图--
     
     2、设置path使其绕圆圈运动
     --代码--
     动画效果：
     --图--
     
     
     CATransition
     转场动画，比UIVIew转场动画具有更多的动画效果，比如Nav的默认Push视图的效果就是通过CATransition来实现。
     --代码--
     动画效果：
     --图--
     
     下面是其他转场类型的动画效果
     
     CASpringAnimation
     
     
     CAAnimationGroup
     使用Group可以将多个动画合并一起加入到层中，Group中所有动画并发执行，可以方便地实现需要多种类型动画的场景。
     --代码--
     动画效果：
     --图--
     
     
     2.3事务管理类
     图层的动画属性的每一个修改必然是事务的一个部分。CATransaction 是核心动画里面负责协调多个动画原子更新显示操作。事务支持嵌套使用。
     */
}





@end
