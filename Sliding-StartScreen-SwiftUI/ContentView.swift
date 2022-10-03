//
//  ContentView.swift
//  Sliding-StartScreen-SwiftUI
//
//  Created by Jonas Bergström on 2022-10-02.
//

import SwiftUI

struct ContentView: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    
    
    var body: some View {
        TabView(selection: $pageIndex) {
            ForEach(pages) { page in
                VStack {
                    Spacer()
                    PageView(page: page)
                    Spacer()
                    if page == pages.last {
                        Button("Sign me up!", action: goToFirstPage)
                            .buttonStyle(.bordered)
                    } else {
                        Button("Next", action: nextPage)
                    }
                }
                .tag(page.tag)
            }
        }
    }
    
    func nextPage() {
        pageIndex += 1
    }
    
    func goToFirstPage() {
        pageIndex = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
