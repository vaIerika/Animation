//
//  ParallaxScrollingEffectView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 14/03/2021.
//

import SwiftUI

struct ParallaxScrollingEffectView: View {
    var body: some View {
        VStack {
            ScrollView {
                ZStack {
                    GeometryReader { geo in
                        Image("bg")
                            .resizable()
                            .scaledToFill()
                            .offset(y: -geo.frame(in: .global).origin.y / 2)
                    }
                    VStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200).opacity(0.7)
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200).opacity(0.7)
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200).opacity(0.7)
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200).opacity(0.7)
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200).opacity(0.7)
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200).opacity(0.7)
                    }.padding(50)
                }
            }
        }.ignoresSafeArea()
    }
}

struct ParallaxScrollingEffectView_Previews: PreviewProvider {
    static var previews: some View {
        ParallaxScrollingEffectView()
    }
}
