//
//  landmarksApp.swift
//  landmarks
//
//  Created by fpena on 20/08/25.
//

import SwiftUI

@main
struct landmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
