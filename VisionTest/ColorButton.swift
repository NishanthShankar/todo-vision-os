//
//  ColorButton.swift
//  VisionTest
//
//  Created by Nishanth Shankar on 21/02/24.
//

import SwiftUI

struct ColorButton: View {
    var action: () -> Void
    var color = Color.clear
    var body: some View {
        Button(action: action) {
            Text("").frame(width: 18, height: 18).background(color).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }.background(Color.clear).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ColorButton(action: {print("Das")})
}
