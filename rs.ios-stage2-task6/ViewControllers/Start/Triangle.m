//
//  Triangle.m
//  rs.ios-stage2-task6
//
//  Created by Siarhei Burakouski on 6/23/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import "Triangle.h"
#import "Colors.h"

@implementation Triangle

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 255.0, 255.0, 255.0, 1.0);
    CGContextFillRect(context, self.bounds);
    CGContextSetFillColorWithColor(context, [[UIColor rsschoolGreenColor] CGColor]);
    CGContextMoveToPoint(context, 0, 70);
    CGContextAddLineToPoint(context, 35, 0);
    CGContextAddLineToPoint(context, 70, 70);
    CGContextFillPath(context);
}

- (void)animate {
    [UIView animateWithDuration:1.5 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.transform = CGAffineTransformRotate(self.transform, M_PI_2);
    } completion:^(BOOL finished){
        if (finished) {
           [self animate];
        }
    }];
}
@end
