//
//  ContentView.swift
//  Word Swipe
//
//  Created by Thomas Pollick on 2/1/24.
//

import SwiftUI

class toggleVars: ObservableObject {
    @Published var isToggled = true
}

struct ContentView: View {
    @StateObject private var toggle = toggleVars()
    var body: some View {
        GroupBox(label:
            Label("End-User Agreement", systemImage: "building.columns")
        ) {
            ScrollView(.vertical, showsIndicators: true) {
                Text("test")
                    .font(.footnote)
            }
            .frame(height: 100)
            Toggle(isOn: $toggle.isToggled) {
                Text("I agree to the above terms")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
