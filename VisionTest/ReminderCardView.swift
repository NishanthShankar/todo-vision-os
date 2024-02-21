//
//  ReminderCardView.swift
//  VisionTest
//
//  Created by Nishanth Shankar on 21/02/24.
//

import SwiftUI

struct ReminderCardView: View {
    @State var color = Color.red
    var text: String?
    var colors = [Color.red, Color.blue, Color.green, Color.yellow]
    @Environment(\.dismissWindow) private var dismissWindow
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                ForEach(colors, id: \.self) { iColor in
                    ColorButton(action: {color = iColor}, color:iColor)
                }
            }
            Spacer()
            HStack {
                Text(text ?? "Enter TODO")
                Spacer()
            }
        }.padding(36).background(color)
    }
}

#Preview {
    ReminderCardView()
}
