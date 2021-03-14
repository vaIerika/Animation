//
//  PopupView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 14/03/2021.
//

import SwiftUI

struct PopupView: View {
    @State private var showPopup = true
    @GestureState private var popupOffset = CGSize.zero
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Button("Show popup") { showPopup = true }
            }
            .blur(radius: showPopup ? 2 : 0)
            .animation(.easeOut)
            
            if showPopup {
                ZStack {
                    Rectangle()
                        .opacity(0.8)
                        .ignoresSafeArea()
                        .onTapGesture { showPopup = false }
                    VStack {
                        Text("Drag popup off the screen")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.pink)
                        Spacer()
                        Text("Tap outside of the popup to close")
                        Spacer()
                        Button("Close") { showPopup = false }
                            .padding(.bottom, 30)
                    }
                    .frame(height: 300)
                    .background(Color.white)
                    .offset(popupOffset)
                    .gesture(
                        DragGesture(minimumDistance: 100)
                            .updating($popupOffset, body: { (value, popupOffset, transaction) in
                                /// tranSLAtion!
                                /// The total translation from the start of the drag gesture to the current event of the drag gestu
                                popupOffset = value.translation
                            })
                            .onEnded { value in
                                showPopup = false
                            }
                    )
                }.animation(.default)
            }
        }
        .accentColor(.pink)
        
        /// a parent animates the adding and removing of child views
        .animation(.easeIn)
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}
