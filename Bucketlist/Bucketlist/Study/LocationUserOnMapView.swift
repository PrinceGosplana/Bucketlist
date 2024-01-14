//
//  LocationUserOnMapView.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 14.01.2024.
//

import MapKit
import SwiftUI

struct LocationUserOnMapView: View {
    let startPosition = MapCameraPosition.region(
        MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 56, longitude: -3),
        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        )
    )
    var body: some View {
        Map(initialPosition: startPosition)
    }
}

#Preview {
    LocationUserOnMapView()
}
