//
//  StoryPageView.swift
//  AboutMe
//
//  Created by Łukasz Adamczak on 01/07/2025.
//

import SwiftUI

struct StoryPageView: View {
    let story: Story
    let pageIndex: Int
    
    var body: some View {
        VStack {
            ScrollView {
                Text(story[pageIndex].text)
            }
            
            ForEach(story[pageIndex].choice, id: \Choice.text) { choice in
                NavigationLink(destination: StoryPageView(story: story, pageIndex: choice.destination)) {
                    Text(choice.text)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                }
            }
        }
        .padding()
        .navigationTitle("Page \(pageIndex + 1)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NonlinearStory_Previews: PreviewProvider {
    static var previews: some View {
        StoryPageView(story: story, pageIndex: 0)
    }
}
