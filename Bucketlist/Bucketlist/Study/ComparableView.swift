//
//  ComparableView.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 02.01.2024.
//

import SwiftUI

struct ComparableView: View {
    let values = [1, 5, 3, 6, 2, 9]
    
    var body: some View {
        List(values, id: \.self) {
            Text(String($0))
        }
    }
}

#Preview {
    ComparableView()
}
