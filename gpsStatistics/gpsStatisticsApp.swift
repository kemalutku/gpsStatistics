//
//  gpsStatisticsApp.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 9.07.2022.
//

import SwiftUI

@main
struct gpsStatisticsApp: App {
    @StateObject var gpsController = GPSController()
    @StateObject var settingsController = SettingsController()
    
    var body: some Scene {
        WindowGroup {
            ContentView(
                gpsController: gpsController,
                settingsController: settingsController
            )
        }
    }
}
