//
//  HorizontalMenuView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 10/04/2021.
//

import SwiftUI

struct HorizontalMenuView: View {
    @State private var showMenu = false
    @State private var showOptions = false

    var body: some View {
        VStack {
            Text("Challenge 4").font(.title)
            Text("Horizontal Menu")
            ZStack {
                Rectangle().ignoresSafeArea()
                
                VStack {
                    RoundedRectangle(cornerRadius: 25.0).fill(Color.white).opacity(0.1)
                        .padding(30)
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color.pink).opacity(0.7)
                                .frame(height: 60)
                            HStack(spacing: 20) {
                                Spacer()
                                Group {
                                    Image(systemName: "pencil")
                                    Image(systemName: "scribble.variable")
                                    Image(systemName: "lasso")
                                    Image(systemName: "scissors")
                                }.opacity(showOptions ? 1 : 0)

                                Image(systemName: "line.horizontal.3.decrease")
                                    .rotationEffect(.degrees(-90))
                                    .padding(.trailing, 10)
                                    .padding(.leading, 30)
                                    .onTapGesture {
                                        withAnimation {
                                            showMenu.toggle()
                                        }
                                        withAnimation(Animation.default.delay(0.4)) {
                                            showOptions.toggle()
                                        }
                                    }
                            }
                            .font(.title)
                            .foregroundColor(.white)
                        }
                        .offset(x: showMenu ? -40 : -330)
                    }
                }
            }
        }
    }
}

struct HorizontalMenuView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalMenuView()
    }
}
