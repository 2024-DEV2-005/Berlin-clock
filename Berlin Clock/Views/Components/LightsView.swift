//
//  LightsView.swift
//  Berlin Clock
//
//  Created by KKAR on 27/12/2023.
//

import SwiftUI

struct LightsView: View {
    var lights: [Lights]
    
    var body: some View {
        
        HStack {
            ForEach(lights, id: \.hashValue) { light in
                LightsBlockView(light: light)
            }
        }
        .padding(.top)
    }
}

#Preview {
    LightsView(lights: [Lights.red])
}
