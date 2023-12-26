//
//  BerlinClockConverter.swift
//  Berlin Clock
//
//  Created by KKAR on 26/12/2023.
//

import Foundation

protocol BerlinClockConvertingTime {
    func convert(date: Date) -> BerlinClock
}


class BerlinClockConverter: BerlinClockConvertingTime {
    
    func convert(date: Date) -> BerlinClock {
        let calendar = Calendar.current
        
        return BerlinClock(
            seconds: Lights.off,
            topHours: [Lights.off],
            bottomHours: [Lights.off],
            topMinutes: [Lights.off],
            bottomMinutes: [Lights.off]
        )
    }
}

