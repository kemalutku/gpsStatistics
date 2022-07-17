//
//  Measurement.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct Measurement: View {
    var rangeObject: RunRange
    
    var body: some View {
        VStack {
            Text(String(Int(rangeObject.minVal)) + " - " + String(Int(rangeObject.maxVal)) + rangeObject.unit)
                .padding(.top)
            Text(String(rangeObject.completionTime) + " sec.")
                .padding(.bottom)
            }
    }
}


struct Measurement_Previews: PreviewProvider {
    static var rangeObject = RunRange(minVal: 0.0, maxVal: 100.0, unit: "kmh", completionTime: 0.0)
    static var previews: some View {
        Measurement(rangeObject: rangeObject)
    }
}
