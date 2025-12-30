//
//  DestinationsListView.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 30/12/25.
//

import SwiftUI
import MapKit

struct DestinationsListView: View {
    @State private var newDestination = false
    @State private var destinationName = ""
    @State var destinations: [Destination]
    
  
    
    var body: some View {
        NavigationStack{
            Group{
                if !destinations.isEmpty{
                    List(destinations) { destination in
                        HStack{
                            Image(systemName: "globe")
                                .imageScale(.large)
                                .foregroundStyle(.blue)
                            VStack(alignment: .leading){
                                Text(destination.name)
                                Text("^[\(destination.placemarks.count) location](inflect: true)")
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }else{
                    VStack(spacing: 12) {
                        Image(systemName: "map")
                            .font(.largeTitle)
                            .foregroundColor(.gray)

                        Text("No Locations")
                            .font(.headline)

                        Text("You have not set up any destinations yet.  Tap on the \(Image(systemName: "plus.circle.fill")) button in the toolbar to begin.")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                }
            }
            .navigationTitle("My Destinations")
            .toolbar {
                Button {
                    newDestination.toggle()

                } label: {
                    Image(systemName: "plus.circle.fill")
                }

            }
            .alert(  "Enter Destination Name",
                     isPresented: $newDestination) {
                         TextField("Enter destination name", text: $destinationName)
                         Button("OK") {
                             if !destinationName.isEmpty {
                                 addDestination()
                             }
                         }
                         Button("Cancel", role: .cancel) {}
                     } message: {
                         Text("Create a new destination")
                     }

        }
    }
    private func addDestination() {
           guard !destinationName.isEmpty else { return }

           let destination = Destination(
               name: destinationName,
               region: MKCoordinateRegion(
                   center: CLLocationCoordinate2D(latitude: 0, longitude: 0),
                   span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
               ),
               placemarks: []
           )

           destinations.append(destination)
           destinationName = ""
       }
}

struct DestinationsListView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationsListView(destinations: [.paris])
    }
}


