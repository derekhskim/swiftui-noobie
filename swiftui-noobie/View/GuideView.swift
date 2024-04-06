//
//  GuideView.swift
//  swiftui-noobie
//
//  Created by Derek Kim on 2024-04-06.
//

import SwiftUI

struct GuideView: View {

    // MARK: - Properties

    let topic: Topics

    // MARK: - View Conformance

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text(topic.description)
            }
            .padding()
        }
        .navigationTitle(topic.rawValue)
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    GuideView(topic: Topics.viewLayout)
}
