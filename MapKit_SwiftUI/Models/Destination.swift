//
//  Destination.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 30/12/25.
//

import Foundation
import SwiftUI
import MapKit


struct Destination: Identifiable {
    let id = UUID()
    let name: String
    let region: MKCoordinateRegion
    var placemarks: [MTPlacemark]
}
extension Destination {
    static let paris = Destination(
        name: "Paris",
        region: MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 48.856788, longitude: 2.351077),
            span: MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
        ),
        placemarks: [
            MTPlacemark(
                name: "Louvre Museum",
                address: "93 Rue de Rivoli, 75001 Paris, France",
                coordinate: CLLocationCoordinate2D(latitude: 48.861950, longitude: 2.336902)
            ),
            MTPlacemark(
                name: "Sacré-Coeur Basilica",
                address: "Parvis du Sacré-Cœur, 75018 Paris, France",
                coordinate: CLLocationCoordinate2D(latitude: 48.886634, longitude: 2.343048)
            ),
            MTPlacemark(
                name: "Eiffel Tower",
                address: "5 Avenue Anatole France, 75007 Paris, France",
                coordinate: CLLocationCoordinate2D(latitude: 48.858258, longitude: 2.294488)
            ),
            MTPlacemark(
                name: "Moulin Rouge",
                address: "82 Boulevard de Clichy, 75018 Paris, France",
                coordinate: CLLocationCoordinate2D(latitude: 48.884134, longitude: 2.332196)
            ),
            MTPlacemark(
                name: "Arc de Triomphe",
                address: "Place Charles de Gaulle, 75017 Paris, France",
                coordinate: CLLocationCoordinate2D(latitude: 48.873776, longitude: 2.295043)
            ),
            MTPlacemark(
                name: "Gare Du Nord",
                address: "Paris, France",
                coordinate: CLLocationCoordinate2D(latitude: 48.880071, longitude: 2.354977)
            ),
            MTPlacemark(
                name: "Notre Dame Cathedral",
                address: "6 Rue du Cloître Notre-Dame, 75004 Paris, France",
                coordinate: CLLocationCoordinate2D(latitude: 48.852972, longitude: 2.350004)
            ),
            MTPlacemark(
                name: "Panthéon",
                address: "Place du Panthéon, 75005 Paris, France",
                coordinate: CLLocationCoordinate2D(latitude: 48.845616, longitude: 2.345996)
            )
        ]
    )
}




