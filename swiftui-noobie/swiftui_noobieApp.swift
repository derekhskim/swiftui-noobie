//
//  swiftui_noobieApp.swift
//  swiftui-noobie
//
//  Created by Derek Kim on 2024-04-06.
//

import SwiftUI

@main
struct swiftui_noobieApp: App {

    // MARK: - Properties

    @AppStorage("userTheme") private var userTheme: Theme = .systemDefault

    // MARK: - App Conformance

    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(userTheme.colorScheme)
        }
    }
}
