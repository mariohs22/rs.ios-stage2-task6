//
//  Colors.m
//  rs.ios-stage2-task6
//
//  Created by Siarhei Burakouski on 6/23/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import "Colors.h"

@implementation UIColor (task6)
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert
{
    NSString *noHashString = [stringToConvert stringByReplacingOccurrencesOfString:@"#" withString:@""];
    NSScanner *scanner = [NSScanner scannerWithString:noHashString];
    [scanner setCharactersToBeSkipped:[NSCharacterSet symbolCharacterSet]]; // remove + and $

    unsigned hex;
    if (![scanner scanHexInt:&hex]) return nil;
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;

    return [UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b / 255.0f alpha:1.0f];
}

+(UIColor *)rsschoolBlackColor {
    return [UIColor colorWithHexString:@"#101010"];
}

+(UIColor *)rsschoolWhiteColor {
    return [UIColor colorWithHexString:@"#FFFFFF"];
}

+(UIColor *)rsschoolRedColor {
    return [UIColor colorWithHexString:@"#EE686A"];
}

+(UIColor *)rsschoolBlueColor {
    return [UIColor colorWithHexString:@"#29C2D1"];
}

+(UIColor *)rsschoolGreenColor {
    return [UIColor colorWithHexString:@"#34C1A1"];
}

+(UIColor *)rsschoolYellowColor {
    return [UIColor colorWithHexString:@"#F9CC78"];
}

+(UIColor *)rsschoolGrayColor{
    return [UIColor colorWithHexString:@"#707070"];
}

+(UIColor *)rsschoolYellowHighlightedColor{
    return [UIColor colorWithHexString:@"#FDF4E3"];
}

@end
