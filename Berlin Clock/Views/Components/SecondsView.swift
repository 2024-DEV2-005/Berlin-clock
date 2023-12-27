//
//  secondsView.swift
//  Berlin Clock
//
//  Created by KKAR on 27/12/2023.
//

import SwiftUI

struct SecondsView: View {
    var light: Lights
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundStyle(light.color)
    }
}

#Preview {
    SecondsView(light: Lights.yellow)
}
