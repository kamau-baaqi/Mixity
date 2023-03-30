//
//  Response.swift
//  APIFInder
//
//  Created by Jordan Barconey on 3/22/23.
//

import Foundation


struct Response: Codable{
    var events: [Event]
}

struct Venue: Codable {
    var name: String
    var address: String
    var city: String
    var country: String
    var display_location: String
}

struct Event: Codable, Identifiable{
    var type: String
    var id: Int
    var venue : Venue
}




