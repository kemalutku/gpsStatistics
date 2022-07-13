//
//  Measurement.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct Measurement: View {
    
    @Binding var timeCounter: Double
    var body: some View {
        VStack {
            Text("0 - 100 KM/H")
                .padding(.top)
            Text(String(Double(timeCounter)) + " sn")
                .padding(.bottom)
        }
    }
}

struct Measurement_Previews: PreviewProvider {
    @State static var timeCounter = 0.0
    static var previews: some View {
        Measurement(timeCounter: $timeCounter)
    }
}
