//
//  ResponseRowView.swift
//  SentimentAnalyzerTutorial
//
//  Created by Sachin Randive on 15/04/26.
//

import SwiftUI

struct ResponseRowView: View {
    let resource: Response
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ResponseRowView(resource: Response(id: UUID().uuidString, text: Response.sampleResponse[0], score: 1.0))
}
