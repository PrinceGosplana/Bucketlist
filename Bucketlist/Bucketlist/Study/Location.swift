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
    let name: String
    let description: String
    let latitude: Double
    let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude,
                               longitude: longitude)
    }
}
