//
//  GestureMagnificationView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 14/03/2021.
//

import SwiftUI

struct GestureMagnificationView: View {
    @GestureState private var scale: CGFloat = 0
    @State private var endScale: CGFloat = 1
    
    var body: some View {
        VStack {
            Image("umbrella")
                .resizable()
                .scaledToFit()
                .scaleEffect(scale + endScale)
                .gesture(
                    MagnificationGesture()
                        .updating($scale, body: { (value, scale, transaction) in
                            scale = value.magnitude
                        })
                        .onEnded { value in
                            endScale = value.magnitude + endScale
                        }
                )
                .animation(.default)
        }
    }
}

struct GestureMagnificationView_Previews: PreviewProvider {
    static var previews: some View {
        GestureMagnificationView()
    }
}
