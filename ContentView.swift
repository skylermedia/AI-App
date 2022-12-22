//
//  ContentView.swift
//  AI
//
//  Created by Skyler Szijjarto on 12/12/22.
//

import SwiftUI
import WebKit

// Tab bar
let tabBarFontSize: Font = .caption
let tabBarColor: Color = tabBarColor

struct ContentView: View {
    var body: some View {
        TabView {
            if #available(iOS 16.0, *) {
                ChatGPT()
                    .tabItem() {
                        Image(systemName: "text.bubble.fill")
                        Text("ChatGPT")
                            .font(tabBarFontSize)
                            .fontWeight(.heavy)
                    }
                    .toolbarBackground(tabBarColor, for: .tabBar)
            } else {
                // Fallback on earlier versions
            }
            if #available(iOS 16.0, *) {
                DALLE()
                    .tabItem() {
                        Image(systemName: "photo.fill")
                        Text("DALL•E - 2")
                            .font(tabBarFontSize)
                            .fontWeight(.heavy)
                    }
                    .toolbarBackground(tabBarColor, for: .tabBar)
            } else {
                // Fallback on earlier versions
            }
//                SocialMedia()
//                    .tabItem() {
//                        Image(systemName: "hammer")
//                        Text("Social Media")
//                            .foregroundColor(Color.black)
//                            .font(tabBarFontSize)
//                            .fontWeight(.heavy)
//                    }
//                    .toolbarBackground(tabBarColor, for: .tabBar)
//            ChatGPT()
//                    .tabItem() {
//                        Image(systemName: "camera.fill")
//                        Text("Social Media")
//                            .font(tabBarFontSize)
//                            .fontWeight(.heavy)
//                    }
//                    .toolbarBackground(tabBarColor, for: .tabBar)
//                ChatGPT()
//                    .tabItem() {
//                        Image(systemName: "person.crop.circle")
//                        Text("Contact Us")
//                            .font(tabBarFontSize)
//                            .fontWeight(.heavy)
//                    }
//                    .toolbarBackground(tabBarColor, for: .tabBar)
//                AboutMe()
//                    .tabItem() {
//                        Image(systemName: "person.circle")
//                        Text("About")
//                            .font(.caption)
//                            .fontWeight(.heavy)
//                    }
//                    .toolbarBackground(tabBarColor, for: .tabBar)
//                ChatGPT()
//                    .tabItem() {
//                        Image(systemName: "hammer")
//                        Text("Development")
//                            .font(tabBarFontSize)
//                            .fontWeight(.heavy)
//                    }
//                    .toolbarBackground(tabBarColor, for: .tabBar)

            //            WaterTracker()
            //                .tabItem() {
            //                    Image(systemName: "glass")
            //                    Text("Water Tracker (Incomplete)")
            //                }
            //                .toolbarBackground(tabBarColor, for: .tabBar)

        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
