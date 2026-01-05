//
//  MapKit_SwiftUIApp.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 29/12/25.
//

import SwiftUI
import SwiftData

@main
struct MapKit_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            StartTab()
        }
        .modelContainer(for: Destination.self)
    }
}
