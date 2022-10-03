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
    
    static var samplePage = Page(name: "Title", description: "Sample description", imageUrl: "Picture1", tag: 0)
    
    static var samplePages: [Page] = [
    Page(name: "Welcome to this Moving Assistance App!", description: "The best app to get your stuff moving", imageUrl: "Picture1", tag: 0),
    Page(name: "Get the help you need!", description: "The perfect place to help each other moving stuff!", imageUrl: "Picture2", tag: 1),
    Page(name: "Let's get started to help people out!", description: "Go ahead and register today!", imageUrl: "Picture3", tag: 2)
    ]
}
