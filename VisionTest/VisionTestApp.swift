//
//  VisionTestApp.swift
//  VisionTest
//
//  Created by Nishanth Shankar on 05/02/24.
//

import SwiftUI

@main
struct VisionTestApp: App {
    
    var body: some Scene {
        MainView().environment(TodoModel())
    }
}
