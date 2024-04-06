//
//  Topics.swift
//  swiftui-noobie
//
//  Created by Derek Kim on 2024-04-06.
//

import Foundation

/// List of topics to be discussded from the app.
enum Topics: String, CaseIterable, Identifiable {

    case viewLayout = "View Layout"
    case text = "Text"
    case button = "Button"
    case image = "Image"
    case colors = "Colors"
    case fonts = "Fonts"
    case padding = "Padding"

    var id: String { self.rawValue }

    var description: String {
        switch self {
        case .viewLayout:
            return "Let's learn about the View Layout, type of layouts and how it works."
        case .text:
            return "Use the Text view to display lines of text in your app and modify its appearance with various modifiers."
        case .button:
            return "Buttons can trigger actions when tapped. Learn how to customize button appearances and behavior."
        case .image:
            return "Images display local or remote images and can be styled in many ways with SwiftUI."
        case .colors:
            return "Explore how to use and define colors in your SwiftUI app."
        case .fonts:
            return "Adjust font types, sizes, and attributes to enhance your app's text readability and aesthetics."
        case .padding:
            return "Padding helps to space out your interface elements. Learn how to apply it to your views effectively."
        }
    }
}
