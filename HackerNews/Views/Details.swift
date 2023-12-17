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
