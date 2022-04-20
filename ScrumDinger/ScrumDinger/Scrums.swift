//
//  Scrums.swift
//  ScrumDinger
//
//  Created by Trevor Keegan on 4/19/22.
//

import SwiftUI

struct Scrums: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                CardView(scrum: scrum).listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}

struct Scrums_Previews: PreviewProvider {
    static var previews: some View {
        Scrums(scrums: DailyScrum.sampleData)
    }
}
