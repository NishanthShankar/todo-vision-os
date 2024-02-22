//
//  MainView.swift
//  VisionTest
//
//  Created by Nishanth Shankar on 21/02/24.
//

import SwiftUI

struct MainView: Scene {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.defaultSize(CGSize(width: 400, height: 800))
        
        WindowGroup(id:"reminder_box", for: Int.self)  { $index in
            ReminderCardView(index:index)
        }.defaultSize(CGSize(width: 200, height: 80))
    }
}
