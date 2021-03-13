//
//  RotationAnimation.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 13/03/2021.
//

import SwiftUI

struct RotationAnimation: View {
    @State private var animate = false

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray)
                .frame(width: 150, height: 100)
                .overlay(Text("Rotation, center"))
                .rotationEffect(.degrees(animate ? 220 : 0))
                .animation(.easeInOut)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray)
                .frame(width: 150, height: 100)
                .overlay(Text("Rotation, bottomTrailing"))
                .rotationEffect(.degrees(animate ? 220 : 0), anchor: .bottomTrailing)
                .animation(.easeInOut)
            
            Button("Animate") { animate.toggle() }
        }
    }
}

struct RotationAnimation_Previews: PreviewProvider {
    static var previews: some View {
        RotationAnimation()
    }
}
