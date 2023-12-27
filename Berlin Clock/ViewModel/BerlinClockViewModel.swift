//
//  BerlinClockViewModel.swift
//  Berlin Clock
//
//  Created by KKAR on 27/12/2023.
//

import Foundation

class BerlinClockViewModel {
    
    @Published var berlinClock : BerlinClock
    let converter: BerlinClockConverter
    let dateProvider: () -> Date
    
    
    init(dateProvider: @escaping () -> Date, converter: BerlinClockConverter) {
        self.dateProvider = dateProvider
        self.converter = converter
        berlinClock = converter.convert(date: self.dateProvider())
    }


}
