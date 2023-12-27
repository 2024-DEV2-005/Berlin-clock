//
//  BerlinClockViewModel.swift
//  Berlin Clock
//
//  Created by KKAR on 27/12/2023.
//

import Foundation

class BerlinClockViewModel: ObservableObject {
    
    @Published var berlinClock: BerlinClock
    let converter: BerlinClockConverter
    let dateProvider: () -> Date
    
    init(dateProvider: @escaping () -> Date, converter: BerlinClockConverter) {
        self.dateProvider = dateProvider
        self.converter = converter
        self.berlinClock = converter.convert(date: self.dateProvider())
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.update()
        }
    }
    
    private func update() {
        self.berlinClock = converter.convert(date: self.dateProvider())
    }
}
