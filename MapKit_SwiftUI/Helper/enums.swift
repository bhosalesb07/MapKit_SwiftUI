//
//  enums.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 30/12/25.
//

import Foundation

enum PlaceMarkerStyle: Equatable {
    case image(imageName: String)
    case title(title: String)
    case monogram(text: String)
    case pinAnnotation
}
