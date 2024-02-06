//
//  ContentView.swift
//  Word Swipe
//
//  Created by Thomas Pollick on 2/1/24.
//

import SwiftUI

class toggleVars: ObservableObject {
    var isToggled = false
    var words = ["hola", "como estás", "paragua"]
}

struct ContentView: View {
    @StateObject private var toggle = toggleVars()
    var body: some View {
        var _ = print(toggle.words[2])
        GroupBox(label:
            Label("End-User Agreement", systemImage: "building.columns")
        ) {
            ScrollView(.vertical, showsIndicators: true) {
                Text(toggle.words[Int.random(in: 0..<toggle.words.count)])
                
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
