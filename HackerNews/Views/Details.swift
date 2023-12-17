//
//  Details.swift
//  HackerNews
//
//  Created by Carson Clark on 2023-12-16.
//

import SwiftUI
import WebKit

struct Details: View {
    
    // use this URL to render webkitview later
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    Details(url: "https://google.ca")
}

// allows us to create a swiftUI view that represents UIKitView
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    // attempts to create a UIKit WebView
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
     
    func updateUIView(_ uiView: WKWebView, context: Context) {
        // checks to see urlString is nil, if not assigns it to safeString
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
