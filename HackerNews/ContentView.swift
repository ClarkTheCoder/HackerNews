//
//  ContentView.swift
//  HackerNews
//
//  Created by carson on 2023-12-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List(posts, rowContent: { post in
                    Text(post.title)
                })
            }
            .navigationBarTitle("Hacker News")
        }
       
    }
}

#Preview {
    ContentView()
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hola"),
    Post(id: "2", title: "Yelloh"),
    Post(id: "3", title: "Bonjur"),
    Post(id: "4", title: "Hi")
]
