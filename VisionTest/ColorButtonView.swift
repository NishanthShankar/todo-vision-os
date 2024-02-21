//
//  ColorButtonView.swift
//  VisionTest
//
//  Created by Nishanth Shankar on 21/02/24.
//

import SwiftUI

struct ColorButtonView: View {
    
    var body: some View {
        Button(action: {
            color = Color.yellow
        }) {
            Text("").frame(width: 18, height: 18).background(Color.black).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }.background(Color.clear).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ColorButtonView()
}
