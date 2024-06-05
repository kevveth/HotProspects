//
//  DetailView.swift
//  HotProspects
//
//  Created by Kenneth Oliver Rathbun on 6/5/24.
//

import SwiftUI
import SwiftData

struct EditView: View {
    @Bindable var prospect: Prospect
    
    var body: some View {
        Form {
            Section("Name") {
                TextField("\(prospect.name)", text: $prospect.name)
            }
            
            Section("Email Address") {
                TextField("\(prospect.emailAddress)", text: $prospect.emailAddress)
            }
        }
        .navigationTitle("Edit Contact")
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Prospect.self, configurations: config)
        
        let sampleProspect = Prospect(name: "John Doe", emailAddress: "john.doe@example.com", isContacted: false)
        return EditView(prospect: sampleProspect)
            .modelContainer(container)
    } catch {
        return Text("Failed to create preview: \(error.localizedDescription)")
    }
}
