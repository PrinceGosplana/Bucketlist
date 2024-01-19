//
//  Location.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 14.01.2024.
//

import Foundation
import MapKit

struct Location: Codable, Equatable, Identifiable {
    let id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude,
                               longitude: longitude)
    }
    #if DEBUG
    static let example = Location(id: UUID(),
                                  name: "Buckingham Palace",
                                  description: "Lit by over 40.000 lightbulbs",
                                  latitude: 51.501,
                                  longitude: -0.141)
    #endif
}
