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
        WindowGroup {
            ContentView()
        }.defaultSize(CGSize(width: 400, height: 800))
        
        WindowGroup(id:"reminder_box", for: String.self)  { $messageID in
            ReminderCardView(text:messageID)
        }.defaultSize(CGSize(width: 200, height: 80))
    
        
    }
}
