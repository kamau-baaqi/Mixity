//
//  ContentView.swift
//  APIFInder
//
//  Created by Jordan Barconey on 3/22/23.
//

import SwiftUI
import MusicKit

struct Item: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let artist: String
    let imageURL: URL?
}

struct ContentView: View {
    @State private var events = [Event]()
    @State private var searchText = ""
    var concerts: [Event]{
        events.filter({$0.type == "concert" && $0.venue.city.lowercased().contains(searchText.lowercased())})
    }
//    if searchText.isEmpty {
//        return concerts
//    }
    @State var songs = [Item]()
    var body: some View {
        VStack{
            NavigationStack {
                List(concerts, id: \.id) { item in
                    VStack(alignment: .leading) {
                        //                    Text(item.type)
                        Text(item.venue.name)
                        Text(item.venue.address)
                        Text(item.venue.city)
                        Text(item.venue.display_location)
                        Text(item.venue.country)
                        
                    }
                    
                    .onAppear {
                        fetchMusic()
                    }
                }
                .task {
                    await self.loadData()
                }
                .refreshable {
                    await self.loadData()
                }
                List(songs) { song in
                    HStack {
                        AsyncImage(url: song.imageURL)
                            .frame(width: 75, height: 75, alignment: .center)
                        VStack(alignment: .leading) {
                            Text(song.name)
                                .font(.title3)
                            Text(song.artist)
                                .font(.footnote)
                        }
                    }
                }
            }
            .searchable(text: $searchText)
        }
        
        
    }
    private let request: MusicCatalogSearchRequest = {
        var request = MusicCatalogSearchRequest(term: "Dynamite", types: [Song.self])
        
        request.limit = 25
        return request
        
    }()
    
    private func fetchMusic() {
        Task {
            // Request permission
            let status = await MusicAuthorization.request()
            switch status {
            case .authorized:
                // Request -> Response
                
                do {
                    let result = try await request.response()
                    // Assigns songs
                    self.songs = result.songs.compactMap({
                        return .init(name: $0.title, artist: $0.artistName, imageURL: $0.artwork?.url(width: 75, height: 75))
                    })
                     
                } catch {
                    print(String(describing: error))
                }
                
            default:
                break
            }
           
        }
    }
    
    
    func loadData() async {
        guard let url = URL(string: "https://api.seatgeek.com/2/events?per_page=300&client_id=MzI2NzE2NjN8MTY3OTk0MTExOS44NDExODIy") else {
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
