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
    @ObservedObject var settingsController: SettingsController
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    NavgationButtonsView()
                    Speedometer(speed: $gpsController.navSpeed, altitude: $gpsController.altitude)
                }
                HomeGraph(modelData: $gpsController.currentRun)
                SpeedTable(speedRanges: $settingsController.speedRanges, distanceRanges: $settingsController.distanceRanges)
                ApplicationStatus(temo: $gpsController.applicationIsRunning,startTime: $gpsController.startTime)
            }
            .onAppear{
                gpsController.requestNavPermission()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct HiddenNavigationBar: ViewModifier {
    func body(content: Content) -> some View {
        content
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

extension View {
    func hiddenNavigationBarStyle() -> some View {
        modifier( HiddenNavigationBar() )
    }
}

struct ContentView_Previews: PreviewProvider {
    @StateObject static var gpsController = GPSController()
    @StateObject static var settingsController = SettingsController()

    static var previews: some View {
        ContentView(
            gpsController: gpsController,
            settingsController: settingsController
        )
    }
}
