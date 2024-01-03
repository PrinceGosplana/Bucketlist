//
//  User.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 03.01.2024.
//

import SwiftUI

struct User: Comparable, Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String
    
    static func < (lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}
