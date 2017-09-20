//
//  CollectionViewCell.swift
//  WLAppleCalendar
//
//  Created by willard on 2017/9/19.
//  Copyright © 2017年 willard. All rights reserved.
//

import UIKit
import JTAppleCalendar
class CellView: JTAppleCell {
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var eventView: UIView!
    @IBOutlet weak var selectedView: UIView!
}
