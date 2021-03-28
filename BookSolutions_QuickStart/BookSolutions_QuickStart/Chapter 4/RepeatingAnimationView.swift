//
//  RepeatingAnimationView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import SwiftUI

struct RepeatingAnimationView: View {
    @State private var start = false
    
    var body: some View {
        Button("Start") { start = true }
            .font(.title2)
            .padding()
            .padding(.horizontal)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2)
                    .scaleEffect(start ? 2 : 1)
                    .opacity(start ? 0 : 1)
            )
            .animation(
                Animation
                    .easeOut(duration: 0.5)
                    .repeatCount(3, autoreverses: false)
        )
    }
}

struct RepeatingAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        RepeatingAnimationView()
    }
}
