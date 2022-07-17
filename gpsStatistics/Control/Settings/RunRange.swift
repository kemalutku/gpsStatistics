//
//  RunRange.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 16.07.2022.
//

import Foundation

struct RunRange: Hashable {
    var minVal: Double
    var maxVal: Double
    var unit: String
    var completionTime: Double
    
    mutating func updateRange(minValue: Double, maxValue: Double, unit: String){
        self.minVal = minValue
        self.maxVal = maxValue
        self.unit = unit
    }
    
    mutating func updateRange(newRange: RunRange) {
        self.minVal = newRange.minVal
        self.maxVal = newRange.maxVal
        self.unit = newRange.unit
    }
    
    mutating func updateCompletion(completionTime: Double) {
        self.completionTime = completionTime
    }
}
