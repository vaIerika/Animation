//
//  RandomCirclesView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 14/03/2021.
//

import SwiftUI

struct RandomCirclesView: View {
    @State private var stepperValue: CGFloat = 1
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(0...40, id: \.self) { _ in
                    Circle().foregroundColor(.blue).opacity(0.2)
                        .frame(width: .random(in: 10...100),
                               height: .random(in: 10...100))
                        .position(
                            x: .random(in: stepperValue...400),
                            y: .random(in: stepperValue...400))
                        .animation(.default)
                }
            }
            Stepper("Change", value: $stepperValue, in: 1...5)
        }.padding()
    }
}

struct RandomCirclesView_Previews: PreviewProvider {
    static var previews: some View {
        RandomCirclesView()
    }
}
