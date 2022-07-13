//
//  SpeedTable.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct SpeedTable: View {
    @Binding var timeCounter: Double
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Measurement(timeCounter: $timeCounter)
                Measurement(timeCounter: $timeCounter)
                Measurement(timeCounter: $timeCounter)
            }
            Spacer()
            VStack {
                Measurement(timeCounter: $timeCounter)
                Measurement(timeCounter: $timeCounter)
                Measurement(timeCounter: $timeCounter)
            }
            Spacer()
        }
        
    }
}

struct SpeedTable_Previews: PreviewProvider {
    @State static var timeCounter = 0.0
    static var previews: some View {
        SpeedTable(timeCounter: $timeCounter)
    }
}
