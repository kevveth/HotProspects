//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by Kenneth Oliver Rathbun on 5/28/24.
//

import SwiftUI
import SwiftData

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
