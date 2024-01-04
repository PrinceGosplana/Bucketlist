//
//  MapKitView.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 04.01.2024.
//

import MapKit
import SwiftUI

struct MapKitView: View {
    let position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    var body: some View {
        Map(initialPosition: position)
            .mapStyle(.hybrid(elevation: .realistic))
    }
}

#Preview {
    MapKitView()
}
