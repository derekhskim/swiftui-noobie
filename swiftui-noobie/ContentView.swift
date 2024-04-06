//
//  ContentView.swift
//  swiftui-noobie
//
//  Created by Derek Kim on 2024-04-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                TopicListView()
                    .tabItem {
                        Label("Topics", systemImage: "book.closed")
                    }

                Text("This is setting page :)")
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
