//
//  ApplicationStatus.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct ApplicationStatus: View {
    @Binding var temo: Bool
    @Binding var startTime: Date
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Button("Ready") {
                    temo = !temo
                    startTime = Date.now
                    print(startTime)
                }
            }
            Spacer()
            
            
        }
        .padding()
        .font(.title)
    
    }
}

struct ApplicationStatus_Previews: PreviewProvider {
    @State static var appStatus = false
    @State static var startTime = Date.now
    static var previews: some View {
        ApplicationStatus(temo: $appStatus,startTime: $startTime)
    }
}
