//
//  SpeedTable.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct SpeedTable: View {
    @Binding var speedRanges: [RunRange]
    @Binding var distanceRanges: [RunRange]
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                ForEach(speedRanges, id: \.self) {speed in
                    Measurement(rangeObject: speed)
                }
            }
            Spacer()
            VStack {
                ForEach(distanceRanges, id: \.self) {distance in
                    Measurement(rangeObject: distance)
                }
            }
            Spacer()
        }
        
    }
}

struct SpeedTable_Previews: PreviewProvider {
    @State static var speedRanges = [
        RunRange(minVal: 0.0, maxVal: 50.0, unit: "kmh", completionTime: 0.0),
        RunRange(minVal: 50.0, maxVal: 100.0, unit: "kmh", completionTime: 0.0),
        RunRange(minVal: 100.0, maxVal: 200.0, unit: "kmh", completionTime: 0.0)
    ]
    @State static var distanceRanges = [
        RunRange(minVal: 0.0, maxVal: 100.0, unit: "m", completionTime: 0.0),
        RunRange(minVal: 0.0, maxVal: 200.0, unit: "m", completionTime: 0.0),
        RunRange(minVal: 0.0, maxVal: 400.0, unit: "m", completionTime: 0.0)
    ]
    
    static var previews: some View {
        SpeedTable(speedRanges: $speedRanges, distanceRanges: $distanceRanges)
    }
}
