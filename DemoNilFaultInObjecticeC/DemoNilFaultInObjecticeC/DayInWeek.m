//
//  DayInWeek.m
//  DemoNilFaults
//
//  Created by Jimmy Huang on 11/22/14.
//  Copyright (c) 2014 Jimmy Huang. All rights reserved.
//

#import "DayInWeek.h"

@implementation DayInWeek

- (NSString *)translateDay:(NSString *)day
{
    if ([day isEqualToString:@"Mon"]) {
        return @"星期一";
    }else if ([day isEqualToString:@"Tue"]) {
        return @"星期二";
    }else if ([day isEqualToString:@"Wed"]) {
        return @"星期三";
    }else if ([day isEqualToString:@"Thu"]) {
        return @"星期四";
    }else if ([day isEqualToString:@"Fri"]) {
        return @"星期五";
    }else if ([day isEqualToString:@"Sat"]) {
        return @"星期六";
    }else if ([day isEqualToString:@"Sun"]) {
        return @"星期日";
    }else {
        return nil;
    }
}

@end
