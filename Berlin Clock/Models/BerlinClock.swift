//
//  BerlinClock.swift
//  Berlin Clock
//
//  Created by KKAR on 26/12/2023.
//

import Foundation
import SwiftUI

struct BerlinClock {
    let seconds: Light
    let topHours: [Light]
    let bottomHours: [Light]
    let topMinutes: [Light]
    let bottomMinutes: [Light]
}

enum Light {
    case yellow
    case red
    case off
}

extension Light {
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
