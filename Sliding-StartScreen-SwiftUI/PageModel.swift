//
//  PageModel.swift
//  Sliding-StartScreen-SwiftUI
//
//  Created by Jonas Bergström on 2022-10-03.
//

import Foundation

struct Page: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Title", description: "Sample description", imageUrl: "delivery", tag: 0)
}
