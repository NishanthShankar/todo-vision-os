//
//  ContentView.swift
//  VisionTest
//
//  Created by Nishanth Shankar on 05/02/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct TodoRow {
    var id: Int
    var text: String
    var isDone: Bool = false
}

struct ContentView: View {
    @Environment(\.openWindow) private var openWindow
    @Environment(TodoModel.self) private var todoMod
    @State var trial = ""
//    @State private var todos = [
//        TodoRow(id:0, text:"Get Groceries"),
//        TodoRow(id:1, text:"Go to work"),
//        TodoRow(id:2, text:"Get back from Work"),
//        ]
    var body: some View {
        VStack {
            Text("Your List")
                .font(.title)
                .fontWeight(.bold)
//            List {
            ForEach(todoMod.items.indices, id: \.self) { index in
                let todo = todoMod.items[index]
                    HStack {
                        Button(action: {
                            todoMod.toggleCompleted(index:index)
                        }) {
                            if(todo.isDone) {
                                Circle().foregroundColor(Color.red).frame(width: 14.0, height: 14.0).padding(14)
                            }
                            else {
                                Circle().stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/).frame(width: 14.0, height: 14.0).padding(14)
                            }
                        }
                        Text(todo.text)
                        Spacer()
                        Button(action: {
                            openWindow(id:"reminder_box", value:index)
                        }) {
                            Text("OPEN")
                        }
                        
                    }
                    
                }
//            }
            Spacer()
        }.padding(36)
    }
    
//    func toggleCompletion(for todo: TodoRow) {
//            if let index = todos.firstIndex(where: { $0.id == todo.id }) {
//                todos[index].isDone.toggle()
//                
//            }
//        }
}

#Preview(windowStyle: .automatic) {
    ContentView().environment(TodoModel())
}
