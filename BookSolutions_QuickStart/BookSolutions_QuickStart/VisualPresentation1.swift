//
//  VisualPresentation1.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 14/03/2021.
//

import SwiftUI

struct VisualPresentation1: View {
    @State private var animate = false
    let offsetValue: CGFloat = 200
    
    var body: some View {
        HStack {
            FlyingAway.FlyingAwayAnimation(animate: animate, offsetValue: offsetValue)
        }
    }
}

struct VisualPresentation1_Previews: PreviewProvider {
    static var previews: some View {
        VisualPresentation1()
    }
}
