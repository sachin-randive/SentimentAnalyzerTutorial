//
//  ContentView.swift
//  SentimentAnalyzerTutorial
//
//  Created by Sachin Randive on 12/04/26.
//

import SwiftUI

struct ContentView: View {
    @State private var responseText: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("Chart")
                    
                    Text("Overview Section")
                    
                    ForEach(0..<10) { Response in
                        Text("Response")
                    }
                }
                
                HStack {
                    TextField(
                        "Your thoughts on future of AI...",
                        text: $responseText,
                        axis: .vertical
                    )
                    .padding()
                    .padding(.leading, 8)
                    .lineLimit(5)
                    .overlay {
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color(.systemGray4), lineWidth: 1.0)
                    }
                    
                    Button("Done") {
                        // Add response
                    }
                    .fontWeight(.semibold)
                }
                .padding()
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    ContentView()
}
