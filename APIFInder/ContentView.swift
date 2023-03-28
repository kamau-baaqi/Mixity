//
//  ContentView.swift
//  APIFInder
//
//  Created by Jordan Barconey on 3/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var events = [Event]()
    var concerts: [Event]{
        events.filter({$0.type == "concert"})
    }
    var body: some View {
        VStack{
            List(concerts, id: \.id) { item in
                VStack(alignment: .leading) {
                    Text(item.type)
                    Text(item.venue.name)
                    Text(item.venue.address)
                    Text(item.venue.display_location)
                    Text(item.venue.country)

               }
            }
            .task {
                await self.loadData()
            }
            .refreshable {
                await self.loadData()
            }
        }
    }
    
    func loadData() async {
        guard let url = URL(string: "https://api.seatgeek.com/2/events?per_page=100&client_id=MzI2NzE2NjN8MTY3OTk0MTExOS44NDExODIy") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                self.events = decodedResponse.events
            }
        } catch {
            print("Invalid data")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
