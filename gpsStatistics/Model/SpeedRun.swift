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
    
    init(initialData:Double,initialGPS:Date){
        self.speedData = [initialData]
        self.gpsTimeStamps = [initialGPS]
    }
    
    
    func addDataPoint(speed:Double,timeStamp:Date){
        self.speedData.append(speed)
        self.gpsTimeStamps.append(timeStamp)
    }
}
