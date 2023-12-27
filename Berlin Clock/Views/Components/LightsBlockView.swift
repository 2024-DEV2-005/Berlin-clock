//
//  lightsBlockView.swift
//  Berlin Clock
//
//  Created by KKAR on 27/12/2023.
//

import SwiftUI

struct LightsBlockView: View {
    var light: Lights
    
    var body: some View {
        Rectangle()
            .frame(maxWidth: 60, maxHeight: 40)
            .foregroundStyle(light.color)
    }
}

#Preview {
    LightsBlockView(light: Lights.yellow)
}
