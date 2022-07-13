//
//  Speedometer.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct Speedometer: View {
    @Binding var speed: Double
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(String(Int(speed)) + " KM/H")
                    .font(.title)
                Spacer()
            }
            Spacer()
        }
    }
}

struct Speedometer_Previews: PreviewProvider {
    @State static var speed = 0.0
    
    static var previews: some View {
        Speedometer(speed: $speed)
    }
}
