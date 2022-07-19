//
//  SettingsController.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 16.07.2022.
//

import Foundation

class SettingsController: ObservableObject {
    @Published var speedRanges: [RunRange]
    @Published var distanceRanges: [RunRange]
    @Published var unitType: String
    
    @Published var allowRollingStart = false

    init() {
        // Default speed ranges
        self.speedRanges = [
            RunRange(minVal: 0.0, maxVal: 50.0, unit: "kmh", completionTime: 0.0),
            RunRange(minVal: 50.0, maxVal: 100.0, unit: "kmh", completionTime: 0.0),
            RunRange(minVal: 100.0, maxVal: 200.0, unit: "kmh", completionTime: 0.0),
            RunRange(minVal: 50.0, maxVal: 100.0, unit: "kmh", completionTime: 0.0),
            RunRange(minVal: 100.0, maxVal: 200.0, unit: "kmh", completionTime: 0.0),
            RunRange(minVal: 50.0, maxVal: 100.0, unit: "kmh", completionTime: 0.0),
            RunRange(minVal: 100.0, maxVal: 200.0, unit: "kmh", completionTime: 0.0),
        ]
        // Default distance ranges
        self.distanceRanges = [
            RunRange(minVal: 0.0, maxVal: 100.0, unit: "m", completionTime: 0.0),
            RunRange(minVal: 0.0, maxVal: 200.0, unit: "m", completionTime: 0.0),
            RunRange(minVal: 0.0, maxVal: 400.0, unit: "m", completionTime: 0.0)
        ]
        
        self.unitType = "metric"
    }
}
