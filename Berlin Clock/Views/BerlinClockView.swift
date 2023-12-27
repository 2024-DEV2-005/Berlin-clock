//
//  BerlinClockView.swift
//  Berlin Clock
//
//  Created by KKAR on 27/12/2023.
//

import SwiftUI

struct BerlinClockView: View {
    @ObservedObject var berlinClockViewModel: BerlinClockViewModel
    var body: some View {
        
        VStack {
            SecondsView(light: berlinClockViewModel.berlinClock.seconds)
            LightsView(lights: berlinClockViewModel.berlinClock.topHours)
            LightsView(lights: berlinClockViewModel.berlinClock.bottomHours)
            LightsView(lights: berlinClockViewModel.berlinClock.topMinutes)
            LightsView(lights: berlinClockViewModel.berlinClock.bottomMinutes)
        }
        .padding()
    }
}

#Preview {
    BerlinClockView(berlinClockViewModel: BerlinClockViewModel(dateProvider: {
        Date()
    }, converter: BerlinClockConverter()))
}
