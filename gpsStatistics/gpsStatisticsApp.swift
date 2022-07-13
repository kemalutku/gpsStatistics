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
    
    var body: some Scene {
        WindowGroup {
            ContentView(gpsController: gpsController)
        }
    }
}
