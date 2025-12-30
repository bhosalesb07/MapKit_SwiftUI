//
//  PlaceMarkerView.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 30/12/25.
//

import Foundation
import SwiftUI


struct PlaceMarkerView: View {
    let style: PlaceMarkerStyle
    
    var body: some View {
        switch style {
            
        case .image(let imageName):
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(5)
                .background(.red)
                .clipShape(Circle())
            
        case .title(let title):
            Text(title)
                .font(.caption.bold())
                .padding(6)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color.white)
                )
                .shadow(radius: 2)
            
        case .monogram(let text):
            MonogramView(text: text)
            
        case .pinAnnotation:
            Image(systemName: "mappin")
                .imageScale(.large)
                .foregroundColor(.red)
                .padding(5)
                .overlay {
                    Circle()
                        .stroke(.red, lineWidth: 2)
                }
        }
    }
}
