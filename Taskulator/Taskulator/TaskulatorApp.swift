//
//  TaskulatorApp.swift
//  Taskulator
//
//  Created by Valentin Köberl on 25.01.25.
//

import SwiftUI

@main
struct TaskulatorApp: App {
    var body: some Scene {
        #if os(iOS)
        WindowGroup {
            ContentView()
        }
        #elseif os(macOS)
        WindowGroup {
            ContentView()
                .frame(minWidth: 800, minHeight: 600) // Mindestgröße für das Fenster
        }
        #endif
    }
}

