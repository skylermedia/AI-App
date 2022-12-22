//
//  DALLE.swift
//  AI
//
//  Created by Skyler Szijjarto on 12/12/22.
//

import SwiftUI

struct DALLE: View {
    @State private var showWebView = false
    private let urlString: String = "https://labs.openai.com/auth/login"
    
    var body: some View {
        VStack() {
            // Normal WebView
            UniversalWebView(url: URL(string: urlString)!).frame(maxHeight: .infinity)
                .padding(.top)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: .white.opacity(0), radius: 20.0, x: 0, y: 0)
            
            
            .sheet(isPresented: $showWebView) {
                UniversalWebView(url: URL(string: urlString)!)
            }
        }
    }
}

struct DALLE_Prievews: PreviewProvider {
    static var previews: some View {
        DALLE()
    }
}
