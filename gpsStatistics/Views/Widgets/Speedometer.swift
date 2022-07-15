//
//  Speedometer.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct Speedometer: View {
    @Binding var speed: Double
    @Binding var altitude: Double
    
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
            HStack {
                Text("Altitude:" + String(Int(altitude)) + " m")
                Spacer()
                Text("Slope: 0%")
            }
            .padding(.horizontal)
        }
    }
}

struct Speedometer_Previews: PreviewProvider {
    @State static var speed = 0.0
    @State static var altitude = 0.0
    
    static var previews: some View {
        Speedometer(speed: $speed, altitude: $altitude)
    }
}
