//
//  ResponsePieChartView.swift
//  SentimentAnalyzerTutorial
//
//  Created by Sachin Randive on 18/04/26.
//

import SwiftUI
import Charts

struct ResponsePieChartView: View {
    private let responses: [Response]
    
    init(reponses: [Response]) {
        self.responses = reponses.sorted { $0.score < $1.score }
    }
    var body: some View {
        Chart(responses) { response in
            SectorMark(
                angle: .value("Type", response.score),
                innerRadius: .ratio(0.75)
            )
            .foregroundStyle(by: .value("sentiment", response.sentiment))
            
        }
        .chartLegend(position: .trailing, alignment: .center)
        .frame(height: 200)
        .padding()
        .chartForegroundStyleScale([
            Sentiment.positive: Sentiment.positive.sentimentColor,
            Sentiment.negative: Sentiment.negative.sentimentColor,
            Sentiment.moderate: Sentiment.moderate.sentimentColor,
        ])
        .chartBackground { proxy in
            GeometryReader { geometry in
                if let anchor = proxy.plotFrame {
                    let frame = geometry[anchor]
                    
                    Image(systemName: "location")
                        .resizable()
                        .scaledToFit()
                        .frame(height: frame.height * 0.4)
                        .position(x: frame.midX, y: frame.midY)
                }
            }
        }
    }
}

#Preview {
    ResponsePieChartView(reponses: [])
}
