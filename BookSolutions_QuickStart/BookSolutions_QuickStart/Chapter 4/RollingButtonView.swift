//
//  RollingButtonView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 11/04/2021.
//

import SwiftUI

struct RollingButtonView: View {
    @State private var showWelcomeText = false
    @State private var showButton = false
    @State private var highlightButton = false
    
    var body: some View {
        VStack {
            Text("Challenge 4.2.").font(.title)
            Text("Rolling Button")
            ZStack {
                Rectangle().ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Text("Welcome!")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .opacity(showWelcomeText ? 1 : 0)
                    Spacer()
                    ZStack {
                        Circle()
                            .fill(Color.pink)
                            .scaleEffect(highlightButton ? 1.8 : 1)
                            .opacity(highlightButton ? 0 : 0.4)
                        Button(action: {
                            
                        }) {
                            Image(systemName: "arrow.forward.circle")
                                .font(.largeTitle)
                        }
                    }
                    .frame(width: 40, height: 40)
                    .rotationEffect(.degrees(showButton ? 0 : -180))
                    .offset(x: showButton ? 130 : -220)
                }
            }
        }
        .accentColor(.pink)
        .onAppear {
            withAnimation(Animation.linear(duration: 1)) {
                showWelcomeText = true
            }
            withAnimation(Animation.easeInOut(duration: 0.8).delay(0.9)) {
                showButton = true
            }
            withAnimation(Animation.easeInOut(duration: 0.9).repeatForever(autoreverses: true)) {
                highlightButton = true
            }
        }
    }
}

struct RollingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RollingButtonView()
    }
}
