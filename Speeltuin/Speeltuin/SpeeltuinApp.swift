//
//  SpeeltuinApp.swift
//  Speeltuin
//
//  Created by Axel Roest on 25/11/2025.
//

import SwiftUI

@main
struct SpeeltuinApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(FavoriteStore())
        }
    }
}
