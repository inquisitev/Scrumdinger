//
//  DetailView.swift
//  ScrumDinger
//
//  Created by Trevor Keegan on 4/20/22.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    var body: some View {
        List{
            Section(header: Text("Meeting Info")){
                Label("Start Meeting", systemImage: "timer")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                HStack{
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes)")
                }
                .accessibilityElement(children: .combine)
                HStack{
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")) {
                let attendees: [DailyScrum.Attendee] = scrum.attendees.map { DailyScrum.Attendee(name: $0)}
                
                
                ForEach(attendees) { attendee in
                    Label("\(attendee.name)", systemImage: "person")
                }
            }
        }
    }
}

extension DailyScrum {
    struct Attendee: Identifiable{
        let id: UUID
        let name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        DetailView(scrum: DailyScrum.sampleData[0])
            
        }
    }
}
