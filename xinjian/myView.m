
//
//  myView.m
//  xinjian
//
//  Created by mac on 15/10/16.
//  Copyright (c) 2015年 ss. All rights reserved.
//

#import "myView.h"
@implementation myView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)drawRect:(CGRect)rect
{
//    //绘制一条直线
//    [self drawQLine];
//
//    //  绘制矩形
  //  [self drawReck];
  //  [self drawArc];

    [self drawQLine];

}


- (void)drawQLine1
{
    //获取画布
    CGContextRef context = UIGraphicsGetCurrentContext();
    //画笔
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineWidth(context, 3);

    //设置画笔的起点划线位置
    CGContextMoveToPoint(context, 10, 250);
    CGContextAddLineToPoint(context, 20, 50);
    CGContextAddLineToPoint(context, 30, 70);
    CGContextAddLineToPoint(context, 40, 30);
    //开始绘制
    CGContextDrawPath(context, kCGPathEOFill);
}

- (void)drawReck
{
    // 01 获取画布
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 02 设置画笔
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineWidth(context, 3);
    // 03 设置闭合路径的填充颜色
    CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
    //设置虚线
    CGFloat arry[3] ={10,5,8};
    CGContextSetLineDash(context, 10, arry, 3);
    //04绘制
    CGContextAddRect(context, CGRectMake(20, 20, 100, 20));
    //开始绘制
    CGContextDrawPath(context, kCGPathFillStroke);

}

// 3.绘制一个圆形
- (void)drawArc
{
    // 01 获取画布
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 02 设置画笔
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineWidth(context, 3);
    // 03 设置闭合路径的填充颜色
    CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
    // 设置画笔的起点
    CGContextMoveToPoint(context, 100, 120);
    
    // 04 绘制一个矩形路径
    CGContextAddArc(context, 100, 120, 100, 2,  M_PI_4 , 2);
    // 05 绘制
    CGContextDrawPath(context, kCGPathFill);
}

// 4.绘制曲线
- (void)drawQLine
{
    // 01 获取画布
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 02 设置画笔
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineWidth(context, 3);
    // 03 设置闭合路径的填充颜色
    CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
    // 04 绘制一个贝塞尔曲线路径
    CGContextMoveToPoint(context, 10, 150);
    CGContextAddCurveToPoint(context, 100, 10, 250 , 150, 325, 10);
    
    // 05 绘制
    CGContextDrawPath(context, kCGPathStroke);
    
}




@end
