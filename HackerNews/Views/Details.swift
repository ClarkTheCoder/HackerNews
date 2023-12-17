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
        WebView(urlString: <#T##String?#>)
    }
}

#Preview {
    Details(url: "https://google.ca")
}

// allows us to create a swiftUI view that represents UIKitView
struct WebView: UIViewRepresentable {
    // attempts to create a UIKit WebView
    
    let urlString: String?
    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    }
     
    func updateUIView(_ uiView: UIViewType, context: Context) {
        <#code#>
    }
}
