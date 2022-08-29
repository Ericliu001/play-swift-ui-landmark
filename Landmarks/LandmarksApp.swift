//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Eric Liu on 8/27/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
                .onOpenURL{url in
                    print(url)
                }
        }
    }
}
