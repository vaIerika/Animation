//
//  LoginFormSequenceView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 08/04/2021.
//

import SwiftUI

struct LoginFormSequenceView: View {
    @State private var startAnimation = false
    private let duration = 0.7
    private let xOffset: CGFloat = -200
    private let delay = 0.5
    
    var body: some View {
        VStack {
            Text("Exercise").font(.title)
            Text("Show Login Form in Sequence")
            ZStack {
                Rectangle().ignoresSafeArea()
                VStack {
                    Spacer()
                    Image(systemName: "lock.shield")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .onTapGesture { startAnimation.toggle() }
                        .scaleEffect(startAnimation ? 2 : 5)
                        .animation(Animation.easeIn(duration: 0.5).delay(0.5))
                    Spacer()
                    VStack {
                        TextFieldView(template: "Username", text: .constant(""))
                            .opacity(startAnimation ? 1 : 0)
                            //.offset(x: startAnimation ? 0 : xOffset)
                            .animation(
                                Animation.easeOut(duration: duration).delay(delay))
                        
                        TextFieldView(template: "Password", text: .constant(""))
                            .opacity(startAnimation ? 1 : 0)
                            //.offset(x: startAnimation ? 0 : xOffset)
                            .animation(
                                Animation.easeOut(duration: duration).delay(delay + 0.4))
                        
                        Button("Login") { }
                            .padding()
                            .opacity(startAnimation ? 1 : 0)
                            //.offset(x: startAnimation ? 0 : xOffset)
                            .animation(
                                Animation.easeOut(duration: duration).delay(delay + 0.6))
                    }
                 //   .opacity(startAnimation ? 1 : 0)
                    .offset(x: startAnimation ? 0 : xOffset)
                    
                    Spacer()
                    Spacer()
                }
                .accentColor(.purple)
            }
        }.onAppear {
            startAnimation.toggle()
        }
    }
    
    struct TextFieldView: View {
        var template: String
        @Binding var text: String
        
        var body: some View {
            ZStack(alignment: .leading) {
                Rectangle()
                    .opacity(0.1)
                    .frame(height: 60)
                Group {
                    if text.isEmpty {
                        Text(template)
                            .opacity(0.5)
                    } else {
                        Text(text)
                    }
                }.padding(.horizontal, 30)
            }
            .foregroundColor(.white)
            .padding(.horizontal)
        }
    }
}

struct LoginFormSequenceView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormSequenceView()
    }
}
