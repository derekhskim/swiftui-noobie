//
//  ContentView.swift
//  swiftui-noobie
//
//  Created by Derek Kim on 2024-04-06.
//

import SwiftUI

struct ContentView: View {

    // MARK: - View Conformance

    var body: some View {
        TabView {
            Group {
                TopicListView()
                    .tabItem {
                        Label("Topics", systemImage: "book.closed")
                    }

                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
            .toolbarBackground(.white, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
    }
}

#Preview {
    ContentView()
}
