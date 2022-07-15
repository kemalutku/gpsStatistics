//
//  SpeedRun.swift
//  gpsStatistics
//
//  Created by Merthan Başer on 13.07.2022.
//

import Foundation

class SpeedRun{
    
    var speedData: [Double]
    var gpsTimeStamps: [Date]
    
    init(){
        self.speedData = [-1.0]
        self.gpsTimeStamps = [Date.now]
    }
    
    init(speedData: [Double], timestamps: [Date]) {
        self.speedData = speedData
        self.gpsTimeStamps = timestamps
    }
    
    init(speedData: [Double], timestamps: [Double]) {
        self.speedData = speedData
        self.gpsTimeStamps = [Date.now]
        
        for index in 1..<timestamps.count {
            self.gpsTimeStamps.append(self.gpsTimeStamps[0].addingTimeInterval(timestamps[index]))
        }
    }
    
    func addDataPoint(speed:Double,timeStamp:Date){
        self.speedData.append(speed)
        self.gpsTimeStamps.append(timeStamp)
    }
    
    func resetRunData(speed:Double, timeStamp:Date){
        self.speedData = [speed]
        self.gpsTimeStamps = [timeStamp]
    }
    
    func timeStamp2Secons() -> [Double] {
        if self.gpsTimeStamps.count > 0 {
            var timeData: [Double] = []
            for timeStamp in self.gpsTimeStamps {
                timeData.append(timeStamp.timeIntervalSince(self.gpsTimeStamps[0]))
            }
            return timeData
        }
        else {
            return [0.0]
        }
    }
    
}
