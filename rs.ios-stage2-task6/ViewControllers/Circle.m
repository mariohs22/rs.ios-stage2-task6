//
//  Circle.m
//  rs.ios-stage2-task6
//
//  Created by Siarhei Burakouski on 6/23/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import "Circle.h"
#import "Colors.h"

@implementation Circle

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 255.0, 255.0, 255.0, 1.0);
    CGContextFillRect(context, self.bounds);
    CGContextSetFillColorWithColor(context, [[UIColor rsschoolRedColor] CGColor]);
    CGContextFillEllipseInRect(context, CGRectMake(0, 0, 70, 70));
}

- (void)animate {
    [UIView animateKeyframesWithDuration:1 delay:0 options:UIViewKeyframeAnimationOptionRepeat animations:^{
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.25 animations:^{
            self.transform = CGAffineTransformScale(self.transform, (CGFloat)77/70, (CGFloat)77/70);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.25 relativeDuration:0.5 animations:^{
            self.transform = CGAffineTransformScale(self.transform, (CGFloat)63/77, (CGFloat)63/77);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.75 relativeDuration:0.25 animations:^{
            self.transform = CGAffineTransformScale(self.transform, (CGFloat)70/63, (CGFloat)70/63);
        }];
    } completion:nil];
}
@end
