//
//  ComparableView.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 02.01.2024.
//

import SwiftUI

struct ComparableView: View {
    private let values = [1, 5, 3, 6, 2, 9].sorted()
    private let users = [
        User(firstName: "Arnold", lastName: "Rimer"),
        User(firstName: "Kristen", lastName: "Kochanski"),
        User(firstName: "David", lastName: "Lister")
    ].sorted()
    
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
