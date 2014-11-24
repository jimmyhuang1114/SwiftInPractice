//
//  main.swift
//  DemoOptionals
//
//  Created by Jimmy Huang on 11/24/14.
//  Copyright (c) 2014 Jimmy Huang. All rights reserved.
//

import Foundation

var dayInWeek: DayInWeek = DayInWeek()
let todayDay: String? = dayInWeek.translateDay("Satt")      // return nil
let todayIs = "今天是"
//let show = todayIs + todayDay!                            //<= forced unwrapping and run time error
var show: String
if let checkTodayDay = todayDay {                           //<= optinals binding
    show = todayIs + checkTodayDay
}else {
    show = "todayDay is nil"
}
println(show)


