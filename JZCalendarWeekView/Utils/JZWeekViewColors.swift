//
//  JZWeekViewColors.swift
//  JZCalendarWeekView
//
//  Created by Jeff Zhang on 29/3/18.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import UIKit

/// cannot change for now, will implement theme in the future
class JZWeekViewColors {

    class var columnHeaderWeekday: UIColor { return UIColor(hex: 0x757575) }
    class var columnHeaderDay: UIColor { return UIColor(hex: 0x757575) }
    class var allDayHeader: UIColor { return UIColor(hex: 0x757575) }
    class var rowHeaderTime: UIColor { return UIColor(hex: 0x999999) }
    class var gridLine: UIColor { return UIColor.separator }

    class var today: UIColor { return UIColor(hex: 0x0089FF) }
    class var appleCalendarRed: UIColor { return UIColor(hex: 0xFC3D39) }
    
    class var mainCellColor: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor.systemGray5
            } else {
                return UIColor.systemBackground
            }
        }
    }
    
    class var allDayCellBackgroundColor: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return UIColor.systemGray3
            } else {
                return UIColor.systemGray6
            }
        }
    }
}

extension UIColor {

    fileprivate convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: a
        )
    }
    // Get UIColor by hex
    fileprivate convenience init(hex: Int, a: CGFloat = 1.0) {
        self.init(
            red: (hex >> 16) & 0xFF,
            green: (hex >> 8) & 0xFF,
            blue: hex & 0xFF,
            a: a
        )
    }
}
