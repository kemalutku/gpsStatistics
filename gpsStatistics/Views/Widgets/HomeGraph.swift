//
//  HomeGraph.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct HomeGraph: View {
    @Binding var modelData: SpeedRun
    
    var body: some View {
        LineGraph(speedPoints: modelData.speedData, timePoints: modelData.timeStamp2Secons())
    }
    
}

struct HomeGraph_Previews: PreviewProvider {
    @State static var modelData = SpeedRun(speedData: [0.0, 40.0, 70.0, 90.0, 100.0, 110.0], timestamps: [0.0, 1.0, 2.0, 3.0, 4.0, 5.0])
        
    static var previews: some View {
        HomeGraph(modelData: $modelData)
    }
}
