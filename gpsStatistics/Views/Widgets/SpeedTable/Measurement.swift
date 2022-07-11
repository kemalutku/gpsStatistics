//
//  Measurement.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct Measurement: View {
    var body: some View {
        VStack {
            Text("0 - 100 KM/H")
                .padding(.top)
            Text("0.0 sn")
                .padding(.bottom)
        }
    }
}

struct Measurement_Previews: PreviewProvider {
    static var previews: some View {
        Measurement()
    }
}
