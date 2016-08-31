//
//  OneViewCell.m
//  DrawCircle
//
//  Created by 区振轩 on 16/8/29.
//  Copyright © 2016年 区振轩. All rights reserved.
//

#import "OneViewCell.h"

@implementation OneViewCell

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
    UIImage * myImage = [UIImage imageNamed:@"hehe"];
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(ctx);//保存上下文
    CGContextAddEllipseInRect(ctx,CGRectMake(105, 5, 40, 40));//因为只要确定了矩形框，圆或者是椭圆就确定了。
    CGContextClip(ctx);
    
    CGContextTranslateCTM(ctx, 0, 50);
    CGContextScaleCTM(ctx, 1, -1);
    CGContextDrawImage(ctx, CGRectMake(100, 0, 50, 50), [myImage CGImage]);
    CGContextRestoreGState(ctx);//恢复状态后，就不会受裁剪的影响，不然只能在剪裁
    
    
    CGContextSaveGState(ctx);//保存上下文
    CGContextAddEllipseInRect(ctx,CGRectMake(5, 5, 40, 40));//因为只要确定了矩形框，圆或者是椭圆就确定了。
    CGContextClip(ctx);
    
    CGContextTranslateCTM(ctx, 0, 50);
    CGContextScaleCTM(ctx, 1, -1);
    CGContextDrawImage(ctx, CGRectMake(0, 0, 50, 50), [myImage CGImage]);
    CGContextRestoreGState(ctx);//恢复状态后，就不会受裁剪的影响，不然只能在剪裁
    
    
    CGContextSaveGState(ctx);//保存上下文
    CGContextAddEllipseInRect(ctx,CGRectMake(155, 5, 40, 40));//因为只要确定了矩形框，圆或者是椭圆就确定了。
    CGContextClip(ctx);
    
    CGContextTranslateCTM(ctx, 0, 50);
    CGContextScaleCTM(ctx, 1, -1);
    CGContextDrawImage(ctx, CGRectMake(150, 0, 50, 50), [myImage CGImage]);
    CGContextRestoreGState(ctx);//恢复状态后，就不会受裁剪的影响，不然只能在剪裁
    
    CGContextSaveGState(ctx);//保存上下文
    CGContextAddEllipseInRect(ctx,CGRectMake(205, 5, 40, 40));//因为只要确定了矩形框，圆或者是椭圆就确定了。
    CGContextClip(ctx);
    
    CGContextTranslateCTM(ctx, 0, 50);
    CGContextScaleCTM(ctx, 1, -1);
    CGContextDrawImage(ctx, CGRectMake(200, 0, 50, 50), [myImage CGImage]);
    CGContextRestoreGState(ctx);//恢复状态后，就不会受裁剪的影响，不然只能在剪裁
    
//    CGContextSaveGState(ctx);//保存上下文
//    CGContextDrawImage(ctx, CGRectMake(0, 0, 50, 50), [myImage CGImage]);
//    CGContextRestoreGState(ctx);//恢复状态后，就不会受裁剪的影响，不然只能在剪裁
//    
//    
//    CGContextSaveGState(ctx);//保存上下文
//    CGContextDrawImage(ctx, CGRectMake(0, 0, 50, 50), [myImage CGImage]);
//    CGContextRestoreGState(ctx);//恢复状态后，就不会受裁剪的影响，不然只能在剪裁
//    
//    CGContextSaveGState(ctx);//保存上下文
//    CGContextDrawImage(ctx, CGRectMake(0, 0, 50, 50), [myImage CGImage]);
//    CGContextRestoreGState(ctx);//恢复状态后，就不会受裁剪的影响，不然只能在剪裁
    
    CGContextStrokePath(ctx);
    
    

}

@end
