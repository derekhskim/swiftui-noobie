//
//  Theme.swift
//  swiftui-noobie
//
//  Created by Derek Kim on 2024-04-06.
//

import SwiftUI

/// List of theme available to choose from
enum Theme: String, CaseIterable {
    case systemDefault = "Default"
    case light = "Light"
    case dark = "Dark"

    // MARK: - Properties
    var colorScheme: ColorScheme? {
        switch self {
        case .systemDefault:
            return nil
        case .light:
            return .light
        case .dark:
            return .dark
        }
    }

    // MARK: - Methods
    func color(_ scheme: ColorScheme) -> Color {
        switch self {
        case .systemDefault:
            return scheme == .dark ? .night : .light
        case .light:
            return .light
        case .dark:
            return .night
        }
    }
}
