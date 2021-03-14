//
//  LongPressGestureWavesView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 14/03/2021.
//

import SwiftUI

struct LongPressGestureWavesView: View {
    @State private var isLongPressed = false
    
    var body: some View {
        VStack {
            Circle()
                .fill(isLongPressed ? Color.pink : Color.yellow)
                .frame(width: 100, height: 100)
                .overlay(Text("Long Press").font(.footnote))
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 2)
                        .scaleEffect(isLongPressed ? 2 : 1)
                        .opacity(isLongPressed ? 0 : 1))
                .onLongPressGesture {
                    isLongPressed.toggle()
                }
                .animation(.default)
                
        }
    }
}

struct LongPressGestureWavesView_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureWavesView()
    }
}
