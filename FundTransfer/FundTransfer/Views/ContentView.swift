//
//  ContentView.swift
//  FundTransfer
//
//  Created by Valerie 👩🏼‍💻 on 02/03/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userSelection: UserSelection
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.background)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                /// top navigation
                TopNavView()
                
                /// title
                TitleView()
                
                ZStack {
                    /// hexagoan view
                    HexagoanBackgroundView()
                    
                    Button(action: {
                        /// refresh users
                        withAnimation {
                            userSelection.refreshUsers()
                        }
                    }) {
                        RefreshView(isRefreshing: $userSelection.isRefreshing)
                    }
                    .onAppear {
                        withAnimation {
                            userSelection.refreshUsers()
                        }
                    }
                    
                    ForEach(userSelection.users) { user in
                        UserView(user: user)
                            .scaleEffect(userSelection.isRefreshing ? 0 : 1)
                            .offset(x: user.offsetValue.x, y: user.offsetValue.y)
                            .onTapGesture {
                                withAnimation {
                                    userSelection.selectUser(with: user.id)
                                }
                            }
                    }
                }
                .padding(.top, 20)
                
                Spacer()
                
                SendButtonView()
            }
            .padding(.horizontal)
        }
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(userSelection: UserSelection())
    }
}
