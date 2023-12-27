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
        let bottomMinutes = convertBottomMinutes(minutes: calendar.component(.minute, from: date) % 5)
        
        return BerlinClock(
            seconds: secondsIsOn ? Light.yellow : Light.off,
            topHours: topHours,
            bottomHours: bottomHours,
            topMinutes: topMinutes,
            bottomMinutes: bottomMinutes
        )
    }
    
    private func convertHours(hourLights: Int) -> [Light] {
        var lightsList: [Light] = []
        
        for index in 1...4 {
            lightsList.append(
                (index <= hourLights) ? Light.red : Light.off
            )
        }
        return lightsList
    }
    
    private func convertTopMinutes(minutes: Int) -> [Light] {
        var lightsList: [Light] = []
        
        for index in 1...11 {
            if (index <= minutes) {
                if (index % 3 == 0) {
                    lightsList.append(Light.red)
                } else {
                    lightsList.append(Light.yellow)
                }
            
            } else {
                lightsList.append(Light.off)
            }
 
        }
        return lightsList
    }
    
    private func convertBottomMinutes(minutes: Int) -> [Light] {
        var lightsList:[Light] = []
        
        for index in 1...4 {
            lightsList.append(
                index <= minutes ? Light.yellow : Light.off
            )
        }
        return lightsList
    }
    
}

