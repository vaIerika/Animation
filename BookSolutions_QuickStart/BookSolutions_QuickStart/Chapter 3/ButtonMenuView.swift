//
//  ButtonMenuView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 14/03/2021.
//

import SwiftUI

struct ButtonMenuView: View {
    @State private var showButtons = false
    
    var body: some View {
        ZStack {
            Group {
                Button(action: { showButtons.toggle() }) {
                    RoundButton(imageName: "bag.badge.plus")
                        .rotationEffect(.degrees(showButtons ? 0 : -90))
                        .offset(x: 0, y: showButtons ? -150 : 0)
                        .opacity(showButtons ? 1 : 0)
                }
                Button(action: { showButtons.toggle() }) {
                    RoundButton(imageName: "gauge.badge.plus")
                        .rotationEffect(.degrees(showButtons ? 0 : 90))
                        .offset(x: showButtons ? -110 : 0, y: showButtons ? -110 : 0)
                        .opacity(showButtons ? 1 : 0)
                }
                Button(action: { showButtons.toggle() }) {
                    RoundButton(imageName: "calendar.badge.plus")
                        .rotationEffect(.degrees(showButtons ? 0 : 90))
                        .offset(x: showButtons ? -150 : 0)
                        .opacity(showButtons ? 1 : 0)
                }
                
                Button(action: { showButtons.toggle() }) {
                    RoundButton(imageName: "plus")
                }
                .rotationEffect(.degrees(showButtons ? 45 : 0))
            }.animation(.default)
        }
    }
    
    
    struct RoundButton: View {
        var imageName: String
        
        var body: some View {
            ZStack {
                Image(systemName: imageName)
                    .font(.system(size: 22))
                    .foregroundColor(.white)
                    .padding(15)
                    .background(
                        Circle().fill(Color.pink).shadow(color: Color.pink.opacity(0.3), radius: 8, x: 4, y: 4)
                    )
            }
        }
    }
}

struct ButtonMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonMenuView()
    }
}
