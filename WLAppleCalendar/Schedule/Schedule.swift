//
//  Schedule.swift
//  WLAppleCalendar
//
//  Created by willard on 2017/9/15.
//  Copyright © 2017年 willard. All rights reserved.
//

import UIKit

struct Schedule {
    var title: String
    var note: String
    var startTime: Date
    var endTime: Date
    var categoryColor: UIColor
}

// random events
extension Schedule {
    init(fromStartDate: Date) {
        title = ["Meet Willard", "Buy a milk", "Read a book"].randomValue()
        note = ["hurry", "In office", "In New york city"].randomValue()
        categoryColor = [.red, .orange, .purple, .blue, .black].randomValue()
        
        let day = [Int](0...27).randomValue()
        let hour = [Int](0...23).randomValue()
        let startDate = Calendar.current.date(byAdding: .day, value: day, to: fromStartDate)!
        
        
        startTime = Calendar.current.date(byAdding: .hour, value: hour, to: startDate)!
        endTime = Calendar.current.date(byAdding: .hour, value: 1, to: startTime)!
    }
}


extension Schedule : Equatable {
    static func ==(lhs: Schedule, rhs: Schedule) -> Bool {
        return lhs.startTime == rhs.startTime
    }
}

extension Schedule : Comparable {
    static func <(lhs: Schedule, rhs: Schedule) -> Bool {
        return lhs.startTime < rhs.startTime
    }
}
