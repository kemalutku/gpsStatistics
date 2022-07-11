//
//  Speedometer.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct Speedometer: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("0 KM/H")
                Spacer()
            }
            Spacer()
        }
    }
}

struct Speedometer_Previews: PreviewProvider {
    static var previews: some View {
        Speedometer()
    }
}
