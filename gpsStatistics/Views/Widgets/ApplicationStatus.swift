//
//  ApplicationStatus.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct ApplicationStatus: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Ready !")
            Spacer()
        }
        .padding()
        .font(.title)
        
    }
}

struct ApplicationStatus_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationStatus()
    }
}
