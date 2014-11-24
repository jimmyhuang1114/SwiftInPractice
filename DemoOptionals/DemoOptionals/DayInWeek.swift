//
//  DayInWeek.swift
//  DemoNilWithOptionals
//
//  Created by Jimmy Huang on 11/22/14.
//  Copyright (c) 2014 Jimmy Huang. All rights reserved.
//

import Foundation

class DayInWeek {    
    func translateDay(day: String) ->String? {
        if (day == "Mon") {
            return "星期一"
        }else if (day == "Tue") {
            return "星期二"
        }else if (day == "Wed") {
            return "星期三"
        }else if (day == "Thu") {
            return "星期四"
        }else if (day == "Fri") {
            return "星期五"
        }else if (day == "Sat") {
            return "星期六"
        }else if (day == "Sun") {
            return "星期日"
        }else {
            return nil
        }
        
    }
}