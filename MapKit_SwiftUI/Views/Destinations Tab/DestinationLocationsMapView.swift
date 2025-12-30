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
    
    @State private var visibleRegion : MKCoordinateRegion?
    
    @State  var destinations: [Destination]
    @State private var destination: Destination?
    
    var body: some View {
        
        Map(
                   coordinateRegion: $region,
                   annotationItems: destination?.placemarks ?? []
               ) { place in
                   MapAnnotation(coordinate: place.coordinate) {
                       Image(systemName: "mappin.circle.fill")
                           .font(.title)
                           .foregroundColor(.red)
                   }
               }
        
        .edgesIgnoringSafeArea(.all)
        
        .onAppear {
            destination = destinations.first
                        if let selectedDestination = destination {
                            region = selectedDestination.region
                        }
            
            
        }
    }
}

struct DestinationLocationsMapView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationLocationsMapView(destinations: [.paris])
    }
}





