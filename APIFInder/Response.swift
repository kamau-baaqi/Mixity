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
    var country: String
    var display_location: String
//    var state: String
}

struct Event: Codable {
    var type: String
    var id: Int
    var venue : Venue
}




