//
//  ContentView.swift
//  AboutMe
//
//  Created by Łukasz Adamczak on 25/06/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", image: "person")
                }
            StoryView()
                .tabItem {
                    Label("Story", image: "book")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorites", image: "star")
                }
            FanFactsView()
                .tabItem {
                    Label("Fan Facts", image: "hand.thumbsup")
                }
        }
    }
}

#Preview {
    ContentView()
}
