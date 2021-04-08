//
//  SpeedAnimationView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 08/04/2021.
//

import SwiftUI

struct SpeedAnimationView: View {
    @State private var change = false
    private let duration = 1.0
    
    var body: some View {
        VStack {
            Button("Animate") { change.toggle() }
            VStack(spacing: 20) {
                Circle()
                    .animation(Animation.easeOut(duration: duration).speed(0.5))
                Circle()
                    .animation(Animation.easeOut(duration: duration).speed(1))
                Circle()
                    .animation(Animation.easeOut(duration: duration).speed(2))
            }
            .offset(x: change ? 130 : -130)
            .frame(height: 100 * 3)
            .foregroundColor(.green)
        }.padding(20)
    }
}

struct SpeedAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        SpeedAnimationView()
    }
}
