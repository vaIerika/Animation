//
//  SizeAnimation.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 13/03/2021.
//

import SwiftUI

struct SizeAnimation: View {
    @State private var animate = false

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray)
                .frame(width: animate ? 100 : 350, height: animate ? 100 : 350)
                .overlay(Text("Frame Size. Parent view changes of  as well"))
                .scaleEffect(animate ? 0.5 : 1)
                .animation(.easeInOut)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray)
                .overlay(Text("Scale Effect. Parent view doesn't change"))
                .scaleEffect(animate ? 0.5 : 1)
                .animation(.easeInOut)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray)
                .overlay(Text("Scale Effect. Anchor: topLeading"))
                .scaleEffect(animate ? 0.5 : 1, anchor: .topLeading)
                .animation(.easeInOut)
            
            Button("Animate") { animate.toggle() }
        }
    }
}

struct SizeAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SizeAnimation()
    }
}
