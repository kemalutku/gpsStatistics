//
//  HomeGraph.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import SwiftUI
import SwiftUICharts

struct HomeGraph: View {
    let data: LineChartData
    
    var body: some View {
        LineChart(chartData: data)
    }
    
}

struct HomeGraph_Previews: PreviewProvider {
    
    static func pData() -> LineChartData {
        let data = LineDataSet(dataPoints: [
            LineChartDataPoint(value: 0.0),
            LineChartDataPoint(value: 5.2),
            LineChartDataPoint(value: 17.7),
            LineChartDataPoint(value: 25.5),
            LineChartDataPoint(value: 39.3),
            LineChartDataPoint(value: 55.1),
            LineChartDataPoint(value: 70.0),
            LineChartDataPoint(value: 100.0)
        ])
        return LineChartData(dataSets: data)
    }
    
    static var previews: some View {
        HomeGraph(data: pData())
    }
}
