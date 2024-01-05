//
//  MapKitView.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 04.01.2024.
//

import MapKit
import SwiftUI

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapKitView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(center:
                            CLLocationCoordinate2D(latitude: 51.507222,
                                                   longitude: -0.1275),
                           span: MKCoordinateSpan(latitudeDelta: 1,
                                                  longitudeDelta: 1)))
    
    let locations = [
        Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141)),
        Location(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076))
    ]
    var body: some View {
        /*
        VStack {
            Map(position: $position)
                .mapStyle(.hybrid(elevation: .realistic))
                .onMapCameraChange { context in
                    print(context.region)
                }
            HStack(spacing: 50) {
                Button("Paris") {
                    position = MapCameraPosition.region(
                        MKCoordinateRegion(center:
                                            CLLocationCoordinate2D(latitude: 48.8566,
                                                                   longitude: 2.3522),
                                           span: MKCoordinateSpan(latitudeDelta: 1,
                                                                  longitudeDelta: 1)))
                }
                Button("Tokyo") {
                    position = MapCameraPosition.region(
                        MKCoordinateRegion(center:
                                            CLLocationCoordinate2D(latitude: 35.6897,
                                                                   longitude: 139.6922),
                                           span: MKCoordinateSpan(latitudeDelta: 1,
                                                                  longitudeDelta: 1)))
                }
                Button("London") {
                    position = MapCameraPosition.region(
                        MKCoordinateRegion(center:
                                            CLLocationCoordinate2D(latitude: 51.507222,
                                                                   longitude: -0.1275),
                                           span: MKCoordinateSpan(latitudeDelta: 1,
                                                                  longitudeDelta: 1)))
                }
            }
        }
        */
        Map {
            ForEach(locations) { location in
//                Marker(location.name, coordinate: location.coordinate)
                Annotation(location.name, coordinate: location.coordinate) {
                    Text(location.name)
                        .font(.headline)
                        .padding()
                        .background(.blue.gradient)
                        .foregroundStyle(.white)
                        .clipShape(.capsule)
                }
                .annotationTitles(.hidden)
            }
        }
    }
}

#Preview {
    MapKitView()
}
