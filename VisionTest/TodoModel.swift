//
//  TodoModel.swift
//  VisionTest
//
//  Created by Nishanth Shankar on 21/02/24.
//

import SwiftUI

@Observable
class TodoModel {
    var items = [
        TodoRow(id:1, text:"Test Model"),
        TodoRow(id:12, text:"Second Model"),
        TodoRow(id:124, text:"Third Model"),
    ]
    
    func toggleCompleted(index: Int) {
        items[index].isDone.toggle()
    }
}
