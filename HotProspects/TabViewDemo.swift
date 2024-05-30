//
//  TabView.swift
//  HotProspects
//
//  Created by Kenneth Oliver Rathbun on 5/29/24.
//

import SwiftUI

struct TabViewDemo: View {
    @State private var selectedTab = "One"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Button("Show Tab 2") { selectedTab = "Two" }
                .tabItem { Label("One", systemImage: "1.circle") }
            Text("Tab 2")
                .tabItem { Label("Two", systemImage: "2.circle") }
                .tag("Two")
        }
    }
}

#Preview {
    TabViewDemo()
}
