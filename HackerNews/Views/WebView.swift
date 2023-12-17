//
//  WebView.swift
//  HackerNews
//
//  Created by carson on 2023-12-17.
//

import Foundation
import SwiftUI
import WebKit

// allows us to create a swiftUI view that represents UIKitView
struct WebView: UIViewRepresentable {
    let urlString: String?

    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        // Update the WKWebView based on changes
        if let safeString = urlString, let url = URL(string: safeString) {
            let request = URLRequest(url: url)
            (uiView as? WKWebView)?.load(request)
        }
    }
}
