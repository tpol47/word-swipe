//
//  ContentView.swift
//  Word Swipe
//
//  Created by Thomas Pollick on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GroupBox(label:
            Label("End-User Agreement", systemImage: "building.columns")
        ) {
            ScrollView(.vertical, showsIndicators: true) {
                Text("test")
                    .font(.footnote)
            }
            .frame(height: 100)
//            Toggle(isOn: true) {
//                Text("I agree to the above terms")
//            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
