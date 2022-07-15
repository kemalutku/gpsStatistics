//
//  ContentView.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 9.07.2022.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    @ObservedObject var gpsController: GPSController
    
    var body: some View {
        VStack {
            Speedometer(speed: $gpsController.navSpeed)
            HomeGraph()
            SpeedTable(timeCounter: $gpsController.timeCounter)
            ApplicationStatus(temo: $gpsController.applicationIsRunning,startTime: $gpsController.startTime)
        }
        .onAppear{
            gpsController.requestNavPermission()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    @StateObject static var gpsController = GPSController()

    static var previews: some View {
        ContentView(
            gpsController: gpsController
        )
    }
}
