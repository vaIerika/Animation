//
//  TrimAnimation.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 13/03/2021.
//

import SwiftUI

struct TrimAnimation: View {
    @State private var animate = false
    @State private var progress: CGFloat = 0.9

    var body: some View {
        VStack(spacing: 30) {
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                .frame(height: 200)
                .rotationEffect(.degrees(-90))
                .animation(.default)
            
            Button("Animate") {
                animate.toggle()
                progress = animate ? 0.25 : 0.9
            }
        }
    }
}

struct TrimAnimation_Previews: PreviewProvider {
    static var previews: some View {
        TrimAnimation()
    }
}
