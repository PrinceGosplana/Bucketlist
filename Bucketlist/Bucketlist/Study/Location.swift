//
//  Location.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 14.01.2024.
//

import Foundation

struct Location: Codable, Equatable, Identifiable {
    let id: UUID
    let name: String
    let description: String
    let latitude: Double
    let longitude: Double
}
