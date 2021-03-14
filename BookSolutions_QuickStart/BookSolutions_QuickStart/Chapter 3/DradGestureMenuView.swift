//
//  DradGestureMenuView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 14/03/2021.
//

import SwiftUI

struct DradGestureMenuView: View {
    @GestureState private var menuOffset = CGSize.zero
    @State private var currentMenuY: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            VStack {
                Rectangle()
                    .overlay(
                        Image(systemName: "line.horizontal.3").foregroundColor(.white))
                    .frame(height: 30)
                HStack {
                    Spacer()
                }
                Spacer()
            }
            .background(RoundedRectangle(cornerRadius: 25.0))
            .frame(height: 300)
            .opacity(0.9)
            .offset(x: 0, y: currentMenuY + menuOffset.height)
            .gesture(
                DragGesture()
                    .updating($menuOffset, body: { (value, menuOffset, transaction) in
                        menuOffset = value.translation
                    })
                    .onEnded { value in
                        if value.translation.height > 100 {
                            currentMenuY = 200
                        } else {
                            currentMenuY = 0
                        }
                    }
            )
            .animation(.default)
        }.ignoresSafeArea()
    }
}

struct DradGestureMenuView_Previews: PreviewProvider {
    static var previews: some View {
        DradGestureMenuView()
    }
}
