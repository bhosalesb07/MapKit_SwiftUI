//
//  DestinationLocationsMapView.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 29/12/25.
//

import SwiftUI
import MapKit

struct DestinationLocationsMapView: View {
    
    
    @State private var region = MKCoordinateRegion(
        center: .moulinRouge,
        span: MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
    )
    let places = [
        Place(coordinate: .moulinRouge),
        Place(coordinate: .gareDuNord)
    ]
    
    var body: some View {
        Map(
            coordinateRegion: $region,
            annotationItems: places
        ) { place in
            MapMarker(coordinate: place.coordinate)
        }
                   .edgesIgnoringSafeArea(.all)
                   .onAppear {
                       let pune = CLLocationCoordinate2D(latitude: 48.884134, longitude: 2.332196)
                       let puneSpan = MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
                       region = MKCoordinateRegion(center: pune, span: puneSpan)
                   }
    }
}

struct DestinationLocationsMapView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationLocationsMapView()
    }
}

struct Place: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}
