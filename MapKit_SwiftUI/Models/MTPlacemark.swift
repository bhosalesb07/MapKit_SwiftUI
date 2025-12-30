//
//  MTPlacemark.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 30/12/25.
//

import Foundation
import SwiftUI
import MapKit

struct MTPlacemark: Identifiable {
    let id = UUID()
    let name: String
    let address: String
    let coordinate: CLLocationCoordinate2D
}
