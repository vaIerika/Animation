//
//  FlyingAway.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 13/03/2021.
//

import SwiftUI

struct FlyingAway: View {
    @State private var animate = false
    let offsetValue: CGFloat = 200

    var body: some View {
        VStack(spacing: 20) {
            
            VStack(spacing: 1) {
                HStack(alignment: .bottom, spacing: 1) {
                    Rectangle()
                        .frame(width: 70, height: 35)
                        .offset(x: animate ? 0 : -offsetValue)
                    Rectangle()
                        .frame(width: 35, height: 70)
                        .offset(y: animate ? 0 : -offsetValue)
                    
                }.offset(x: -18)
                
                HStack(alignment: .top, spacing: 1) {
                    Rectangle()
                        .frame(width: 35, height: 70)
                        .offset(y: animate ? 0 : offsetValue)
                    Rectangle()
                        .frame(width: 70, height: 35)
                        .offset(x: animate ? 0 : offsetValue)
                }.offset(x: 18)
            }
            .rotationEffect(.degrees(animate ? 0 : -90))
            .foregroundColor(animate ? .pink : .yellow)
            .opacity(animate ? 1 : 0)
            .animation(.default)
            
            Button("Animate") { animate.toggle() }

            Text("Steps: \n1.Build the end state")
        }
    }
}

struct FlyingAway_Previews: PreviewProvider {
    static var previews: some View {
        FlyingAway()
    }
}
