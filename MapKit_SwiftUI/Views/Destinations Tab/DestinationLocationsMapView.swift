//
//  DestinationLocationsMapView.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 29/12/25.
//

import SwiftUI
import MapKit

struct DestinationLocationsMapView: View {
    
    @State private var cameraPosition:MapCameraPosition = .automatic
    @State private var visibleRegion: MKCoordinateRegion?
    var body: some View {
        Map(position:$cameraPosition){
            Marker("Moulin Rouge", coordinate: .moulinRouge)
            Marker(coordinate: .arcDeTriomphe) {
                Label("Arc De Triomphe", systemImage: "star.fill")
            }
            .tint(.yellow)
            
            Marker("Eiffel Tower", image: "eiffelTower", coordinate: .eiffelTower)
                .tint(.blue)
            
            Marker("", monogram: Text("GN"), coordinate: .gareDuNord)
                .tint(Color("AccentColor"))
            
            Marker("Louvre", systemImage: "person.crop.artframe", coordinate: .louvre)
                .tint(Color("AppBlue"))
            
            Annotation("Notre Dame", coordinate: .notreDame) {
                Image(systemName: "star")
                    .imageScale(.large)
                    .foregroundStyle(.red)
                    .padding(10)
                    .background(.white)
                    .clipShape(Circle())
                
            }
            Annotation("Sacre Coeur", coordinate: .sacreCoeur, anchor: .center) {
                Image(.sacreCoeur)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30,height: 30)
            }
            Annotation("Pantheon", coordinate: .pantheon) {
                Image(systemName: "mappin")
                    .imageScale(.large)
                    .foregroundStyle(.red)
                    .padding(5)
                    .overlay {
                        Circle()
                            .strokeBorder(.red,lineWidth: 2)
                    }
                
            }
            MapCircle(center: CLLocationCoordinate2D(latitude: 48.856788, longitude: 2.351077), radius: 5000)
                .foregroundStyle(.red.opacity(0.5))
            
        }
        .onMapCameraChange(frequency: .onEnd){ context in
            visibleRegion = context.region
        }
        .onAppear{
            let paris = CLLocationCoordinate2D(latitude: 48.856788, longitude: 2.351077)
            let parisSpan = MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
            let parisRegion = MKCoordinateRegion(center: paris, span: parisSpan)
            cameraPosition = .region(parisRegion)
        }
        
    }
}

#Preview{
    DestinationLocationsMapView()
}




