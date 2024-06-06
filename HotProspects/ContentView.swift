//
//  ContentView.swift
//  HotProspects
//
//  Created by Kenneth Oliver Rathbun on 5/28/24.
//

import SwiftUI
import UserNotifications
import SamplePackage

struct ContentView: View {
    @State private var sort: [SortDescriptor<Prospect>] = []
    
    var body: some View {
        NavigationStack {
            TabView {
                ProspectsView(filter: .none, sort: sort)
                    .tabItem {
                        Label("Everyone", systemImage: "person.3")
                    }
                ProspectsView(filter: .contacted, sort: sort)
                    .tabItem {
                        Label("Contacted", systemImage: "checkmark.circle")
                    }
                ProspectsView(filter: .uncontacted, sort: sort)
                    .tabItem {
                        Label("Uncontacted", systemImage: "questionmark.diamond")
                    }
                MeView()
                    .tabItem {
                        Label("Me", systemImage: "person.crop.square")
                    }
            }
            .toolbar {
                ToolbarItem {
                    Menu {
                        Picker("Sort By", selection: $sort) {
                            Text("None")
                                .tag([SortDescriptor<Prospect>]())
                            Text("Name")
                                .tag([SortDescriptor<Prospect>(\Prospect.name)])
                        }
                    } label: {
                        Label("Sort", systemImage: "arrow.up.arrow.down")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Prospect.self)
}
