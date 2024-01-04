//
//  MapKitView.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 04.01.2024.
//

import MapKit
import SwiftUI

struct MapKitView: View {
    var body: some View {
        Map(interactionModes: [.rotate, .zoom])
            .mapStyle(.hybrid(elevation: .realistic))
    }
}

#Preview {
    MapKitView()
}
