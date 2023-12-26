//
//  BerlinClockConverter.swift
//  Berlin Clock
//
//  Created by KKAR on 26/12/2023.
//

import Foundation

class BerlinClockConverter: BerlinClockConvertingTime {
    
    func convert(date: Date) -> BerlinClock {
        let calendar = Calendar.current
        
        let secondsIsOn = calendar.component(.second, from: date) % 2 == 0
        
        return BerlinClock(
            seconds: secondsIsOn ? Lights.yellow : Lights.off,
            topHours: [Lights.off],
            bottomHours: [Lights.off],
            topMinutes: [Lights.off],
            bottomMinutes: [Lights.off]
        )
    }
}

