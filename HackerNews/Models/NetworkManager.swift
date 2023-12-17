//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Carson Clark on 2023-12-15.
//

import Foundation

// observableobject means it can broadcast its properties to any other interested parties
class NetworkManager: ObservableObject {
    
    // specifies which properties any other party can access
    // similar to RSS feeds, if you subscribe to this post, you'll be able to hear from it when contents change
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder  = JSONDecoder()
                    // have this decoder attempt to decode JSON response from url
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            // dispatchqueue is resonsible for updating posts property in UI
                            DispatchQueue.main.async{
                                self.posts = results.hits
                                print(self.posts)
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
