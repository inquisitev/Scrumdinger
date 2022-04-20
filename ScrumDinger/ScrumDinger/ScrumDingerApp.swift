//
//  ScrumDingerApp.swift
//  ScrumDinger
//
//  Created by Trevor Keegan on 4/18/22.
//

import SwiftUI

@main
struct ScrumDingerApp: App {
    var body: some Scene {
        WindowGroup {
            Scrums(scrums: DailyScrum.sampleData)
        }
    }
}
