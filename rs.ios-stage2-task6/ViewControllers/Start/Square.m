//
//  Square.m
//  rs.ios-stage2-task6
//
//  Created by Siarhei Burakouski on 6/23/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import "Square.h"
#import "Colors.h"

@implementation Square

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 255.0, 255.0, 255.0, 1.0);
    CGContextFillRect(context, self.bounds);
    CGContextSetFillColorWithColor(context, [[UIColor rsschoolBlueColor] CGColor]);
    CGContextFillRect(context, CGRectMake(0, 0, 70, 70));
}

- (void)animate {
    [UIView animateKeyframesWithDuration:1 delay:0 options:UIViewKeyframeAnimationOptionRepeat animations:^{
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.25 animations:^{
            self.transform = CGAffineTransformTranslate(self.transform, 0, 7);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.25 relativeDuration:0.5 animations:^{
            self.transform = CGAffineTransformTranslate(self.transform, 0, -14);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.75 relativeDuration:0.25 animations:^{
            self.transform = CGAffineTransformTranslate(self.transform, 0, 7);
        }];
    } completion:nil];
}
@end
