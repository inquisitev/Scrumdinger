//
//  Theme.swift
//  ScrumDinger
//
//  Created by Trevor Keegan on 4/19/22.
//

import Foundation
import SwiftUI

struct Theme{
    let mainColor: Color
    let accentColor: Color

    static func generateRandomColor() -> Theme {
        let themes: [Theme] = [
            Theme(mainColor: .teal, accentColor: .black),
            Theme(mainColor: .red, accentColor: .black),
            Theme(mainColor: .green, accentColor: .black),
            Theme(mainColor: .brown, accentColor: .black),
            Theme(mainColor: .blue, accentColor: .black),
            Theme(mainColor: .yellow, accentColor: .black),
            Theme(mainColor: .orange, accentColor: .black),
            Theme(mainColor: .pink, accentColor: .black),
            Theme(mainColor: .purple, accentColor: .black),
            
        ]
        return themes.randomElement()!
    }

}
