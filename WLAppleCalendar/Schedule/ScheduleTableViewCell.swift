//
//  ScheduleTableViewCell.swift
//  WLAppleCalendar
//
//  Created by willard on 2017/9/18.
//  Copyright © 2017年 willard. All rights reserved.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryLine: UIView!
    @IBOutlet weak var startTimeLabel: UILabel!
    @IBOutlet weak var endTimeLabel: UILabel!

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var noteLabel: UILabel!
    
    var schedule: Schedule! {
        didSet {
            titleLabel.text = schedule.title
            noteLabel.text = schedule.note
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm"
            
            startTimeLabel.text = dateFormatter.string(from: schedule.startTime)
            endTimeLabel.text = dateFormatter.string(from: schedule.endTime)
            categoryLine.backgroundColor = schedule.categoryColor
        }
    }
}
