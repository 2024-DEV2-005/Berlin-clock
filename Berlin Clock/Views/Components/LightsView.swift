//
//  LightsView.swift
//  Berlin Clock
//
//  Created by KKAR on 27/12/2023.
//

import SwiftUI

struct LightsView: View {
    var lights: [Light]
    
    var body: some View {
        let lightsWithIndex = Array(lights.enumerated())
        HStack {
            ForEach(lightsWithIndex, id: \.offset) { tuple in
                LightBlockView(light: tuple.element)
            }
        }
        .padding(.top)
    }
}

#Preview {
    LightsView(lights: [Light.red])
}
