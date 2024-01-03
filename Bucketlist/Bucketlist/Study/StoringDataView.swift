//
//  StoringDataView.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 03.01.2024.
//

import SwiftUI

struct StoringDataView: View {
    var body: some View {
        Button("Read and write") {
            let data = Data("Test message".utf8)
            let url = URL.documentsDirectory.appending(path: "message.txt")
            do {
                try data.write(to: url, options: [.atomic, .completeFileProtection])
                let input = try String(contentsOf: url)
                print(input)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    StoringDataView()
}
