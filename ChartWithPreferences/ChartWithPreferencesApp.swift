//
//  ChartWithPreferencesApp.swift
//  ChartWithPreferences
//
//  Created by Konrad on 22/08/2024.
//

import SwiftUI

@main
struct ChartWithPreferencesApp: App {
    @StateObject private var defaults = Defaults()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(defaults)
        }

        WindowGroup("Chart Window") {
            ChartView(defaults: defaults)
        }
    }
}
