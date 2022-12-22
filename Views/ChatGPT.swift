//
//  AI.swift
//  AI
//
//  Created by Skyler Szijjarto on 12/12/22.
//

import SwiftUI

// Image
let imageFont: Font? = .body
let imageColor: Color = Color.white

// Text Font
let textFont: Font? = .caption

// Rectangle Frame
let rectangleWidth: CGFloat = 142.5
let rectangleHeight: CGFloat = 55
let rectangleAlignment: Alignment = .bottomLeading

struct ChatGPT: View {
  let webView = WebView(request: URLRequest(url: URL(string: "https://chat.openai.com")!))
  
  var body: some View {
    ZStack {
      webView
            .overlay(
                Rectangle()
                    .cornerRadius(20)
                    .foregroundColor(Color("rectangleColor"))
//                  .frame(width: 200, height: 75, alignment: .bottomLeading)
                    .frame(width: rectangleWidth, height: rectangleHeight, alignment: .bottomLeading)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: rectangleAlignment)
                    .shadow(color: Color("rectangleColor"), radius: 3, x: 1, y: 1)
                    .overlay(
                        HStack {
                            VStack {
                                Button(action: {
                                    self.webView.goBack(); HapticManager.instance.impact(style: .soft)
}) {
                                    Image(systemName: "arrowshape.left.fill")
                                        .font(imageFont)
                                        .foregroundColor(imageColor)
                                        .scaledToFit()
                                        .frame(width: 25)
                                        .font(imageFont)
                                        .padding(.bottom, 1)
                                        .padding(.top, 3)
                                }
                                
//                                Text("Back")
//                                    .font(textFont)
//                                    .fontWeight(.heavy)
//                                    .foregroundColor(Color("textColor"))
                            }
                            
                            VStack {
                                Button(action: {
                                    self.webView.goHome(); HapticManager.instance.notification(type: .success)
                                }){
                                    Image(systemName: "house.fill")
                                        .font(imageFont)
                                        .foregroundColor(imageColor)
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .padding(.bottom, 1)
//                                      .padding(.horizontal, 25)
                                        .padding(.horizontal, 10)
                                }
//                                Text("Home")
//                                    .font(textFont)
//                                    .fontWeight(.heavy)
//                                  .foregroundColor(Color("textColor"))
                            }
                            VStack {
                                Button(action: {
                                    self.webView.goBack(); HapticManager.instance.impact(style: .soft)
                                }){
                                    Image(systemName: "arrowshape.right.fill")
                                        .font(imageFont)
                                        .foregroundColor(imageColor)
                                        .scaledToFit()
                                        .frame(width: 25)
                                        .padding(.bottom, 1)
                                        .padding(.top, 3)
                                }
//                                Text("Forward")
//                                    .font(textFont)
//                                    .fontWeight(.heavy)
//                                    .foregroundColor(Color("textColor"))
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: rectangleAlignment)
                        .padding(.bottom, 17.5)
                        .padding(.horizontal, 17.5)
                    )
                    .padding(.bottom, 10)
                    .padding(.horizontal, 10)
            )
        }
    }
}

struct ChatGPT_Previews: PreviewProvider {
    static var previews: some View {
        ChatGPT()
    }
}
