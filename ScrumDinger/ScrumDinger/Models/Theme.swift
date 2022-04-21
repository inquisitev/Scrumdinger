//
//  Theme.swift
//  ScrumDinger
//
//  Created by Trevor Keegan on 4/19/22.
//

import Foundation

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    var mainColor: Color {
        switch self{
        case .bubblegum:
            return Color(red: 0.929, green: 0.502, blue: 0.82, opacity: 1.0)
        case .buttercup:
            return Color(red: 1.0, green: 0.942, blue: 0.587, opacity: 1.0)
        case .indigo:
            return Color(red: 0.212, green: 0.0, blue: 0.443, opacity: 1.0)
        case .lavender:
            return Color(red: 0.812, green: 0.808, blue: 1.0, opacity: 1.0)
        case .magenta:
            return Color(red: 0.647, green: 0.075, blue: 0.467, opacity: 1.0)
        case .navy:
            return Color(red: 0.0, green: 0.075, blue: 0.255, opacity: 1.0)
        case .orange:
            return Color(red: 1.0, green: 0.544, blue: 0.256, opacity: 1.0)
        case .oxblood:
            return Color(red: 0.288, green: 0.029, blue: 0.043, opacity: 1.0)
        case .periwinkle:
            return Color(red: 0.526, green: 0.509, blue: 1.0, opacity: 1.0)
        case .poppy:
            return Color(red: 0.997, green: 0.37, blue: 0.369, opacity: 1.0)
        case .purple:
            return Color(red: 0.57, green: 0.296, blue: 0.947, opacity: 1.0)
        case .seafoam:
            return Color(red: 0.797, green: 0.918, blue: 0.898, opacity: 1.0)
        case .sky:
            return Color(red: 0.431, green: 0.574, blue: 0.998, opacity: 1.0)
        case .tan:
            return Color(red: 0.761, green: 0.611, blue: 0.494, opacity: 1.0)
        case .teal:
            return Color(red: 0.132, green: 0.56, blue: 0.621, opacity: 1.0)
        case .yellow:
            return Color(red: 1.0, green: 0.874, blue: 0.303, opacity: 1.0)
        }
    }
    var name: String {
        rawValue.capitalized
    }
}
