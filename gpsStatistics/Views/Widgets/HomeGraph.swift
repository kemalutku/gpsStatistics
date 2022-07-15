//
//  HomeGraph.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI

struct HomeGraph: View {
    
    var body: some View {
        LineGraph(speedPoints: [0.0, 40.0, 70.0, 90.0, 100.0], timePoints: [0.0, 1.0, 2.0, 3.0, 4.0])
    }
    
}

struct HomeGraph_Previews: PreviewProvider {
        
    static var previews: some View {
        HomeGraph()
    }
}
