//
//  Models.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 30/12/25.
//

import Foundation
import MapKit

struct Place: Identifiable, Equatable {
    static func == (lhs: Place, rhs: Place) -> Bool {
        lhs.id == rhs.id
    }
    
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let markerStyle: PlaceMarkerStyle
}


