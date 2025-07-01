//
//  FanFactsView.swift
//  AboutMe
//
//  Created by Łukasz Adamczak on 26/06/2025.
//

import SwiftUI

struct FanFactsView: View {
    @State private var funFact: String = ""
    
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight: 400)
            
            Button("Generate Random Fun Fact") {
                funFact = information.funFacts.randomElement()!
            }
        }
        .padding()
    }
}

#Preview {
    FanFactsView()
}
