//
//  ComparableView.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 02.01.2024.
//

import SwiftUI

private struct User: Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String
}

struct ComparableView: View {
    private let values = [1, 5, 3, 6, 2, 9].sorted()
    private let users = [
        User(firstName: "Arnold", lastName: "Rimer"),
        User(firstName: "Kristen", lastName: "Kochanski"),
        User(firstName: "David", lastName: "Lister")
    ].sorted { $0.lastName < $1.lastName }
    
    var body: some View {
        //            List(values, id: \.self) {
        //                Text(String($0))
        //            }
        List(users) { user in
            Text("\(user.lastName), \(user.firstName)")
        }
    }
}

#Preview {
    ComparableView()
}
