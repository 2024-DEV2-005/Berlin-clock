//
//  BerlinClock.swift
//  Berlin Clock
//
//  Created by KKAR on 26/12/2023.
//

import Foundation
import SwiftUI

struct BerlinClock {
    let seconds: Lights
    let topHours: [Lights]
    let bottomHours: [Lights]
    let topMinutes: [Lights]
    let bottomMinutes: [Lights]
}

enum Lights {
    case yellow
    case red
    case off
}

extension Lights {
    var color: Color {
        switch self {
        case .off:
            return Color.gray
        case .red:
            return Color.red
        case .yellow:
            return Color.yellow
        }
    }
}
