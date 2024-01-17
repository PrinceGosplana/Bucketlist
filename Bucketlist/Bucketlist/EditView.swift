//
//  EditView.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 17.01.2024.
//

import SwiftUI

struct EditView: View {
    @Environment(\.dismiss) var dismiss
    var location: Location
    
    @State private var name: String
    @State private var description: String
    
    var body: some View {
        Text("Hello, World!")
    }
}

//#Preview {
//    EditView()
//}
