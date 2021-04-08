//
//  SequencingView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 08/04/2021.
//

import SwiftUI

struct SequencingView: View {
    @State private var expandMoreInfo = true
    
    @State private var expandMoreInfo1 = true
    @State private var showInfo1 = true

    var body: some View {
        VStack {
            GeometryReader { geo in
                VStack(spacing: 15) {
                    HStack {
                        Image(systemName: "info.circle")
                            .padding(.horizontal)
                        Text("Login Help")
                        Spacer()
                    }.padding(.top)
                    
                    VStack(spacing: 10) {
                        Image(systemName: "slider.horizontal.3")
                            .font(.largeTitle)
                        Text("Appear after parent is done animating out.")
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).opacity(0.1))
                    .padding(.horizontal)
                    .opacity(expandMoreInfo ? 1 : 0)
                    .animation(
                        Animation.default.delay(0.5))
                }
                .padding(.trailing, 12)
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.yellow).shadow(radius: 8))
                .offset(
                    x: expandMoreInfo ? 15 : (geo.frame(in: .global).width - 65),
                    y: expandMoreInfo ? 15 : (geo.frame(in: .global).height - 65))
                .animation(.easeInOut)
                .onTapGesture {
                    expandMoreInfo.toggle()
                }
            }
        GeometryReader { geo in
            VStack(spacing: 15) {
                HStack {
                    Image(systemName: "info.circle")
                        .padding(.horizontal)
                    Text("Login Help")
                    Spacer()
                }.padding(.top)
                
                VStack(spacing: 10) {
                    Image(systemName: "slider.horizontal.3")
                        .font(.largeTitle)
                    Text("Appear after parent is done animating out.")
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).opacity(0.1))
                .padding(.horizontal)
                .opacity(showInfo1 ? 1 : 0)
                //.animation(Animation.default.delay(0.5))
            }
            .padding(.trailing, 12)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.yellow).shadow(radius: 8))
            .offset(
                x: expandMoreInfo1 ? 15 : (geo.frame(in: .global).width - 65),
                y: expandMoreInfo1 ? 15 : (geo.frame(in: .global).height - 65))
            //.animation(.easeInOut)
            .onTapGesture {
                // Two animations with delay to make sequence
                withAnimation {
                    expandMoreInfo1.toggle()
                }
                withAnimation(Animation.default.delay(0.5)) {
                    showInfo1.toggle()
                }
            }
        }
        }
    }
}

struct SequencingView_Previews: PreviewProvider {
    static var previews: some View {
        SequencingView()
    }
}
