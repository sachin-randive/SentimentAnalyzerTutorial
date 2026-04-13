//
//  Sentiment.swift
//  SentimentAnalyzerTutorial
//
//  Created by Sachin Randive on 12/04/26.
//

import SwiftUI
import Charts

enum Sentiment: String, Plottable {
    case positive = "Positive"
    case moderate = "Moderate"
    case negative = "Negative"
    
    init(_ score: Double) {
        if score > 0.2 {
            self = .positive
        } else if score < -0.2 {
            self = .negative
        } else {
            self = .moderate
        }
    }
    
    var icon: String {
        switch self {
        case .positive:
            return "chevron.up.2"
        case .moderate:
            return "minus"
        case .negative:
            return "chevron.down.2"
        }
    }
    
    var sentimentColor: Color {
        switch self {
        case .positive:
            return .teal
        case .moderate:
            return .gray
        case .negative:
            return .red
        }
    }
}
