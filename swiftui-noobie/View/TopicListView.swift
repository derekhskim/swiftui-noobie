//
//  TopicListView.swift
//  swiftui-noobie
//
//  Created by Derek Kim on 2024-04-06.
//

import SwiftUI

struct TopicListView: View {

    // MARK: - View Conformance

    var body: some View {
        NavigationView {
            List {
                ForEach(Topics.allCases) { topic in
                    NavigationLink(destination: GuideView(topic: topic)) {
                        Text(topic.rawValue)
                    }
                }
            }
            .navigationTitle("Topics")
        }
    }
}

#Preview {
    TopicListView()
}
