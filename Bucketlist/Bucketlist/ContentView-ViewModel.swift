//
//  ContentView-ViewModel.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 26.01.2024.
//

import CoreLocation
import Foundation
import MapKit

extension LocationUserOnMapView {
    @Observable
    class ViewModel {
        private(set) var locations = [Location]()
        var selectedPlace: Location?
        
        func addLocation(at point: CLLocationCoordinate2D) {
            let newLocation = Location(id: UUID(),
                                       name: "New Location",
                                       description: "",
                                       latitude: point.latitude,
                                       longitude: point.longitude)
            locations.append(newLocation)
        }
        
        func update(location: Location) {
            guard let selectedPlace else { return }
            
            if let index = locations.firstIndex(of: selectedPlace) {
                locations[index] = location
            }
        }
    }
}