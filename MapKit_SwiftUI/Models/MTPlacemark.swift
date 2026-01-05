//
//  MTPlacemark.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 02/01/26.
//

import SwiftData
import MapKit



@Model
class MTPlacemark{
    var name:String
    var address:String
    var latitude: Double
    var longitude:Double
    var destination:Destination?
    
    init(name: String, address: String, latitude: Double, longitude: Double) {
        self.name = name
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
    }
    var cordinate: CLLocationCoordinate2D{
        .init(latitude: latitude, longitude: longitude)
    }
}
