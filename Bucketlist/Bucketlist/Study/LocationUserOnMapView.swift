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
    @State private var locations = [Location]()
    
    var body: some View {
        MapReader { proxy in
            Map(initialPosition: startPosition) {
                ForEach(locations) { location in
                    Annotation(location.name,
                               coordinate: location.coordinate) {
                        Image(systemName: "star.circle")
                            .resizable()
                            .foregroundStyle(.red)
                            .frame(width: 44, height: 44)
                            .background(.white)
                            .clipShape(.circle)
                    }
                }
            }
            .onTapGesture { position in
                if let coordinate = proxy.convert(position, from: .local) {
                    let newLocation = Location(id: UUID(),
                                               name: "New Location",
                                               description: "",
                                               latitude: coordinate.latitude,
                                               longitude: coordinate.longitude)
                    locations.append(newLocation)
                }
            }
        }
    }
}

#Preview {
    LocationUserOnMapView()
}
