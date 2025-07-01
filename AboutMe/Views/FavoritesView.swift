//
//  FavoritesView.swift
//  AboutMe
//
//  Created by Łukasz Adamczak on 26/06/2025.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favorites")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            Text("Hobbies")
                .font(.title2)
            HStack {
                ForEach(information.hobbies, id: \.self) {hobby in
                        Image(systemName: hobby)
                        .resizable()
                        .frame(width: 80, height: 80)
                }
                .padding()
            }
            .padding()
            
            Text("Foods")
                .font(.title2)
            HStack(spacing: 40) {
                ForEach(information.foods, id: \.self) { food in
                        Text(food)
                        .font(.system(size: 48))
                }
            }
            .padding()
            
            Text("Favorites Colors")
            HStack(spacing: 30) {
                ForEach(information.colors, id: \.self) { color in
                        color
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    FavoritesView()
}
