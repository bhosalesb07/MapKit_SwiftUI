//
//  StartTab.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 29/12/25.
//

import SwiftUI

struct StartTab: View {
    var body: some View {
        TabView{
            Group{
                TripMapView()
                    .tabItem {
                    Label("TripMap", systemImage: "map")
                }
                DestinationsListView()
                    .tabItem {
                        Label("Destinations", systemImage: "globe.desk")
                    }
            }
            
            .toolbarBackground(Color("AppBlue").opacity(0.8), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme(.dark, for: .tabBar)
        }
    }
}

#Preview {
    StartTab()
        .modelContainer(Destination.preview)
}
