//
//  MoveCircleShape.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 04/03/2021.
//

import SwiftUI

struct MoveCircleShape: View {
    @State private var change = false
    @State private var diagonal = true
    
    var body: some View {
        VStack {
            Text("Challenge 1").font(.title)
            Text("Move the Circle Shape ") +
                Text(diagonal ? "(diagonal)" : "(vertical)")
            ZStack {
                Rectangle().ignoresSafeArea()
                VStack {
                    ZStack {
                        Rectangle()
                        
                        if diagonal {
                            Circle()
                                .fill(Color.red)
                                .frame(width: 70, height: 70)
                                .offset(x: change ? 150 : -150, y: change ? 250 : -250)
                                .animation(.easeInOut)
                        } else {
                            Circle()
                                .fill(Color.red)
                                .frame(width: 70, height: 70)
                                .offset(y: change ? 250 : -250)
                                .animation(.linear)
                        }
                    }
                    HStack {
                        Spacer()
                        Button("Start 🚀 ") {
                            change.toggle()
                        }.font(.title3).foregroundColor(.red)
                        
                        Spacer()
                        Button(diagonal ? "↕️" : "↘️") {
                            diagonal.toggle()
                        }
                    }.padding(10)
                }
            }
        }
    }
}

struct MoveCircleShape_Previews: PreviewProvider {
    static var previews: some View {
        MoveCircleShape()
    }
}
