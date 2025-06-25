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
                    Label("Home", systemImage: "person")
                }
            StoryView()
                .tabItem {
                    Label("Story", systemImage: "book")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
            FanFactsView()
                .tabItem {
                    Label("Fan Facts", systemImage: "hand.thumbsup")
                }
        }
    }
}

#Preview {
    ContentView()
}
