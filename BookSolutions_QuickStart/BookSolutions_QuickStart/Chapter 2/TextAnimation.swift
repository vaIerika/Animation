//
//  TextAnimation.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 13/03/2021.
//

import SwiftUI

struct TextAnimation: View {
    @State private var animate = false

    var body: some View {
        VStack(spacing: 30) {
            Text("Not smooth")
                .font(.system(size: animate ? 50 : 20))
                .animation(.easeInOut)
            
            Text("Animated")
                .font(.system(size: 50))
                .scaleEffect(animate ? 1 : 0.4)
                .animation(.easeInOut)
            
            Text("Important: Use bigger size at first, so it isn't blurred.")
                .padding()
                .background(Color.yellow)
            
            Button("Animate") { animate.toggle() }
        }
    }
}

struct TextAnimation_Previews: PreviewProvider {
    static var previews: some View {
        TextAnimation()
    }
}
