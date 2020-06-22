//
//  Colors.h
//  rs.ios-stage2-task6
//
//  Created by Siarhei Burakouski on 6/23/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (task6)

+(UIColor *)rsschoolBlackColor;
+(UIColor *)rsschoolWhiteColor;
+(UIColor *)rsschoolRedColor;
+(UIColor *)rsschoolBlueColor;
+(UIColor *)rsschoolGreenColor;
+(UIColor *)rsschoolYellowColor;
+(UIColor *)rsschoolGrayColor;
+(UIColor *)rsschoolYellowHighlightedColor;

+(UIColor *)colorWithHexString:(NSString *) stringToConvert;

@end

NS_ASSUME_NONNULL_END
