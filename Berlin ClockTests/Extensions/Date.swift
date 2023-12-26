//
//  Date.swift
//  Berlin Clock
//
//  Created by KKAR on 26/12/2023.
//

import Foundation

extension Date {
    func withSeconds(seconds: Int) -> Date {
        
        let calendar = Calendar.current
        let date =  calendar.date(bySettingHour: 0,
                             minute: 0,
                             second: seconds,
                             of: self,
                             direction: .backward)!
        
        return date
        
    }
    
    func withHours(hours: Int) -> Date {
        
        let calendar = Calendar.current
        let date =  calendar.date(bySettingHour: hours,
                             minute: 0,
                             second: 0,
                             of: self,
                             direction: .backward)!
        
        return date
        
    }
}
