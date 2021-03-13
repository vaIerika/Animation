//
//  AlignmentAnimation.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 13/03/2021.
//

import SwiftUI

struct AlignmentAnimation: View {
    @State private var animate = false
    
    var body: some View {
        VStack {
            VStack(alignment: animate ? .trailing : .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 100)
                    .animation(.default)
                HStack {
                    Spacer()
                }
            }
            HStack(alignment: animate ? .bottom : .top) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 100)
                    .animation(.default)
                VStack {
                    Spacer()
                }
            }
            
            Button("Animate") { animate.toggle() }
        }.frame(width: .infinity, height: .infinity)
    }
}

struct AlignmentAnimation_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentAnimation()
    }
}
