//
//  secondsView.swift
//  Berlin Clock
//
//  Created by KKAR on 27/12/2023.
//

import SwiftUI

struct SecondsView: View {
    var light: Light
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundStyle(light.color)
    }
}

#Preview {
    SecondsView(light: Light.yellow)
}
