//
//  StoryView.swift
//  AboutMe
//
//  Created by Łukasz Adamczak on 26/06/2025.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        NavigationStack {
            StoryPageView(story: story, pageIndex: 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
