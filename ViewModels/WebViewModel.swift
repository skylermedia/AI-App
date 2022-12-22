//
//  WebViewModel.swift
//  AI
//
//  Created by Skyler Szijjarto on 12/12/22.
//

import SwiftUI
import WebKit

struct UniversalWebView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
        }
    }
