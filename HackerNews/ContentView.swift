//
//  ContentView.swift
//  HackerNews
//
//  Created by carson on 2023-12-14.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            VStack {
                List(networkManager.posts, rowContent: { post in
                    Text(post.title)
                })
            }
            .navigationBarTitle("Hacker News")
            
        }.onAppear(perform: {
            networkManager.fetchData()
        })
       
    }
}
    
#Preview {
    ContentView()
}

