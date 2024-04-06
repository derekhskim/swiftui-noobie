//
//  SettingsView.swift
//  swiftui-noobie
//
//  Created by Derek Kim on 2024-04-06.
//

import SwiftUI

struct SettingsView: View {

    // MARK: - Properties

    @Environment(\.colorScheme) private var scheme
    @State private var changeTheme: Bool = false

    // MARK: - View Conformance

    var body: some View {
        List {
            HStack {
                Button("Change Theme") {
                    changeTheme.toggle()
                }
            }
        }
        .sheet(isPresented: $changeTheme, content: {
            ThemeChangeView(scheme: scheme)
                .presentationDetents([.height(410)])
                .presentationBackground(.clear)
        })
    }
}

#Preview {
    SettingsView()
}
