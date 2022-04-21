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
                NavigationLink(destination: DetailView(scrum: scrum)){
                CardView(scrum: scrum)
                    
                }.listRowBackground(scrum.theme.mainColor)
            }
        }.navigationTitle("Daily Scrums")
            .toolbar(){
                Button(action: {}){
                    Image(systemName: "plus")
                }.accessibilityLabel("New Scrum")
            }
    }
}

struct Scrums_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        Scrums(scrums: DailyScrum.sampleData)
            
        }
    }
}
