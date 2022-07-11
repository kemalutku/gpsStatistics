//
//  SpeedTable.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct SpeedTable: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Measurement()
                Measurement()
                Measurement()
            }
            Spacer()
            VStack {
                Measurement()
                Measurement()
                Measurement()
            }
            Spacer()
        }
        
    }
}

struct SpeedTable_Previews: PreviewProvider {
    static var previews: some View {
        SpeedTable()
    }
}
