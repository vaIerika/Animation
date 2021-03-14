//
//  RotationGestureGearsView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 14/03/2021.
//

import SwiftUI

struct RotationGestureGearsView: View {
    @State private var degrees = 0.0
    
    var body: some View {
        VStack {
            Image(systemName: "gear")
                .font(.system(size: 100))
                .rotationEffect(.degrees(degrees))
                .gesture(
                    RotationGesture()
                        .onChanged { angle in
                            degrees = angle.degrees
                        }
                )
                .animation(.default)
            
            Image(systemName: "gear")
                .font(.system(size: 60))
                .rotationEffect(-.degrees(degrees))
                .offset(x: 55, y: -35)
                .animation(.default)

            Image(systemName: "gear")
                .font(.system(size: 50))
                .rotationEffect(.degrees(degrees))
                .offset(x: 20, y: -56)
                .animation(.default)
        }
    }
}

struct RotationGestureGearsView_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureGearsView()
    }
}
