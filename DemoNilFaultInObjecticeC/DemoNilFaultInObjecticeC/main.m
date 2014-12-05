//
//  main.m
//  DemoNilFaultInObjecticeC
//
//  Created by Jimmy Huang on 11/24/14.
//  Copyright (c) 2014 Jimmy Huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DayInWeek.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DayInWeek *dayInWeek = [[DayInWeek alloc] init];
        NSString *todayDay = [dayInWeek translateDay:@"Satt"];
        NSString *todayIs = @"今天是";
        if (todayDay != nil) {
            NSString *show = [todayIs stringByAppendingString:todayDay];
            NSLog(@"%@", show);
        }else {
            NSLog(@"todayDay is nil");
        }
    }
    return 0;
}
