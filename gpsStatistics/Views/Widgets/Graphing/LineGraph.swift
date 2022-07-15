//
//  LineGraph.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 15.07.2022.
//

import SwiftUI

struct LineGraph: View {
    // Input values
    var speedPoints: [Double]
    var timePoints: [Double]
    
    //Configuration parameters
    var widthPaddingRatio = 0.10

    var grid = true
    var gridXLineCount = 2
    var gridYFrequency = 2.0
    
    var highestPoint: Double {
        let max = speedPoints.max() ?? 1.0
        if max == 0 {return 1.0}
        return max
    }
    
    var farthestPoint: Double {
        let max = timePoints.max() ?? 1.0
        if max == 0 {return 1.0}
        return max
    }
    
    var body: some View {
        GeometryReader { geometry in
            let height = geometry.size.height
            let width = geometry.size.width
            let widthPadding = width * widthPaddingRatio
            
            // Draw data points
            Path { path in
                path.move(to: CGPoint(x:widthPadding, y: height * self.heightRatio(for: 0)))
                
//                for index in 1..<speedPoints.count {
//                    path.addLine(to: CGPoint(
//                        x: CGFloat(index) * width * (1 - widthPaddingRatio) / CGFloat(speedPoints.count - 1),
//                        y: height * self.heightRatio(for: index)
//                    ))
//                }
                
                for index in 1..<timePoints.count {
                    path.addLine(to: CGPoint(
                        x: width * (1 - widthPaddingRatio) * self.widthRatio(for: index),
                        y: height * self.heightRatio(for: index)
                    ))
                }
            }
            .stroke(Color.accentColor, style: StrokeStyle(lineWidth: 2, lineJoin: .round))
            
            // Draw x,y axises
            Path { path in
                // x axis
                path.move(to: CGPoint(x:widthPadding, y:height))
                path.addLine(to: CGPoint(x: width - widthPadding, y: height))

                // y axis
                path.move(to: CGPoint(x:widthPadding, y:height))
                path.addLine(to: CGPoint(x: widthPadding, y: 0))
            }
            .stroke(Color.black, style: StrokeStyle(lineWidth: 1, lineJoin: .round))
            
            // draw grid
            if grid {
                Path { path in
                    // x axis grid
                    for yLine in 1...gridXLineCount {
                        let yVal = CGFloat(height / Double(gridXLineCount + 1) * Double(yLine))
                        path.move(to: CGPoint(x: widthPadding,y: yVal))
                        path.addLine(to: CGPoint(x: width - widthPadding, y: yVal))
                    }
                    
                    let xSpacing = timePoints.max() ?? 0.0 / gridYFrequency + 1.0
                    for xLine in 1...Int(xSpacing)-1 {
                        let xVal = CGFloat((width - 2 * widthPadding) / xSpacing * Double(xLine))
                        path.move(to:CGPoint(x: widthPadding + xVal, y: 0))
                        path.addLine(to: CGPoint(x: widthPadding + xVal, y: height))
                        
                    }
                }
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 0.5, lineJoin: .round))
            }
            
            
        }
        .padding(.vertical)
    }
    
    private func heightRatio(for index:Int) -> Double {
        1 - (speedPoints[index] / highestPoint)
    }
    
    private func widthRatio(for index:Int) -> Double {
        (timePoints[index] / farthestPoint)
    }
}

struct LineGraph_Previews: PreviewProvider {
    static var previews: some View {
        LineGraph(speedPoints: [0.0, 40.0, 70.0, 90.0, 100.0], timePoints: [0.0, 1.0, 2.0, 3.0, 6.0])
    }
}
