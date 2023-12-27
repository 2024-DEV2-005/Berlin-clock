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
        
        HStack {
            ForEach(lights, id: \.hashValue) { light in
                LightBlockView(light: light)
            }
        }
        .padding(.top)
    }
}

#Preview {
    LightsView(lights: [Light.red])
}
