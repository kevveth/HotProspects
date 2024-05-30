//
//  ContentView.swift
//  HotProspects
//
//  Created by Kenneth Oliver Rathbun on 5/28/24.
//

import SwiftUI

struct ContentView: View {
    let users = ["Tohru", "Yuki", "Kyo", "Momiji"]
    @State private var selection: Set<String> = .init()
    
    private var countDescription: LocalizedStringKey {
        "^[\(selection.count) person](inflect: true)"
    }
    
    var body: some View {
        NavigationStack {
            List(users, id: \.self, selection: $selection) {
                Text($0)
            }
            .navigationTitle("HotProspects")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
            
            if selection.isEmpty == false {
                Text("You selected ") + Text(countDescription) + Text(": ") + Text("\(selection.formatted())")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
