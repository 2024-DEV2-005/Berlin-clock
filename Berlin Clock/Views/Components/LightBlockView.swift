//
//  lightsBlockView.swift
//  Berlin Clock
//
//  Created by KKAR on 27/12/2023.
//

import SwiftUI

struct LightBlockView: View {
    var light: Light
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(maxWidth: 60, maxHeight: 40)
            .foregroundStyle(light.color)
    }
}

#Preview {
    LightBlockView(light: Light.yellow)
}
