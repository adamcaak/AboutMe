//
//  StoryModels.swift
//  AboutMe
//
//  Created by Łukasz Adamczak on 01/07/2025.
//

import Foundation

struct Story {
    let pages: [StoryPage]
    
    subscript(_ pageIndex: Int) -> StoryPage {
        return pages(pageIndex)
    }
}

struct StoryPage {
    let text: String
    
    let choice: [Choice]
    
    init(_ text: String, choice: [Choice]) {
        self.text = text
        self.choice = choice
    }
}

struct Choice {
    let text: String
    let destination: Int
}
