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
        let topHours = convertHours(hourLights: calendar.component(.hour, from: date) / 5)
        let bottomHours = convertHours(hourLights: calendar.component(.hour, from: date) % 5)
        let topMinutes = convertTopMinutes(minutes: calendar.component(.minute, from: date) / 5)
    
        return BerlinClock(
            seconds: secondsIsOn ? Lights.yellow : Lights.off,
            topHours: topHours,
            bottomHours: bottomHours,
            topMinutes: [Lights.off],
            bottomMinutes: [Lights.off]
        )
    }
    
    private func convertHours(hourLights: Int) -> [Lights] {
        var lightsList: [Lights] = []
        
        for index in 1...4 {
            lightsList.append(
                (index <= hourLights) ? Lights.red : Lights.off
            )
        }
        return lightsList
    }
    
    private func convertTopMinutes(minutes: Int) -> [Lights] {
        var lightsList: [Lights] = []
        
        for index in 1...11 {
            lightsList.append(
    
                index <= minutes ? 
                (index % 3 == 0 ? Lights.red : Lights.yellow) : Lights.off
                
            )
        }
        return lightsList
    }
    
}

