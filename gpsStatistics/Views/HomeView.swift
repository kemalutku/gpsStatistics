//
//  ContentView.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 9.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Speedometer()
            HomeGraph()
            SpeedTable()
            ApplicationStatus()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
