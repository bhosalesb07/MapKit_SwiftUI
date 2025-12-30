//
//  MonogramMarkerView.swift
//  MapKit_SwiftUI
//
//  Created by Mac on 30/12/25.
//

import Foundation
import SwiftUI

struct MonogramView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 14, weight: .bold))
            .foregroundColor(.white)
            .frame(width: 24, height: 24)
            .background(Color.blue)
            .clipShape(Circle())
    }
}

