//
//  ContentView-ViewModel.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 26.01.2024.
//

import Foundation
import MapKit

extension LocationUserOnMapView {
    @Observable
    class ViewModel {
        var locations = [Location]()
        var selectedState: Location?
    }
}
