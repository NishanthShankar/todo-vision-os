//
//  ReminderCardView.swift
//  VisionTest
//
//  Created by Nishanth Shankar on 21/02/24.
//

import SwiftUI

struct ReminderCardView: View {
    @Environment(\.dismissWindow) private var dismissWindow
    @Environment(TodoModel.self) private var todoMod
    @State var color = Color.red
    
    var text: String?
    var index: Int?
    var colors = [Color.red, Color.blue, Color.green, Color.yellow]
    
    
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
                Text(todoMod.items[index ?? 0].text)
                Spacer()
                Button("Done") {
                    todoMod.toggleCompleted(index: index ?? 0)
                    
                }
            }
        }.padding(36).background(color)
            .onChange(of:todoMod.items[index ?? 0].isDone, perform: {
                if($0) {
                    dismissWindow()
                }
            })
    }
        
}

#Preview {
    ReminderCardView()
}
