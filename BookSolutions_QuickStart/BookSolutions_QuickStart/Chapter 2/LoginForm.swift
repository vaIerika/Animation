//
//  LoginForm.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 13/03/2021.
//

import SwiftUI

struct LoginForm: View {
    @State private var showLoginForm = false
    @State private var showMenu = false

    var body: some View {
        VStack {
            Text("Challenge 2").font(.title)
            Text("Show Login Form and Menu")
            ZStack {
                Rectangle().ignoresSafeArea()
                
                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            showMenu.toggle()
                        }) {
                            Image(systemName: "line.horizontal.3.decrease")
                                .font(.title)
                                .foregroundColor(.pink)
                        }
                        
                    }.padding()
                    Spacer()
                    Text("Login to continue").font(.headline)
                        .padding()
                    Button(action: {
                        showLoginForm.toggle()
                    }) {
                        Image(systemName: "arrow.forward.circle")
                            .font(.title)
                            .foregroundColor(.pink)
                            .rotationEffect(.degrees(showLoginForm ? 180 : 0))
                            .animation(.easeIn)
                    }.padding(.bottom, 30)
                    VStack {
                        TextFieldView(text: "Username")
                        TextFieldView(text: "Password")
                        
                    }
                    .offset(x: showLoginForm ? 0 : -screenWidth)
                    .animation(.easeInOut)
                    
                    Spacer()
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white.opacity(0.1))
                            .frame(width: screenWidth * 0.9, height: 310)
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "line.horizontal.3.decrease.circle")
                                Text("Menu").font(.headline)
                            }
                            VStack(alignment: .leading, spacing: 15) {
                                Text("About")
                                Text("Social media")
                                Text("Change password")
                                Text("Delete acount")
                                Text("Login out")
                            }
                            .font(.callout).opacity(0.7)
                            .padding()
                        }
                        .padding(.bottom, 30)
                        .padding(.leading, 60)
                    }
                    .offset(y: showMenu ? 80 : 300)
                    .opacity(showMenu ? 1 : 0)
                    .scaleEffect(showMenu ? 1 : 0.25, anchor: .bottom)
                    .animation(.easeInOut)


                }.foregroundColor(.white)
            }
        }
    }
    
    // MARK: - Constants
    let screenWidth = UIScreen.main.bounds.size.width
    
    struct TextFieldView: View {
        var text: String
        
        var body: some View {
            ZStack(alignment: .leading) {
                Text(text)
                    .opacity(0.3)
                    .padding(.trailing, 100)
                    .background(
                        Color(.white)
                            .frame(height: 1)
                            .offset(y: 20)
                    )
            }.padding(.vertical)
        }
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
