//
//  ContentView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 04/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Contents".uppercased()).font(.subheadline).opacity(0.5)
                Text("Chapter 1. Getting started")
                    .font(.title2)
                    .padding(.bottom)
                HStack {
                    NavigationLink(
                        destination: MoveCircleShape(),
                        label: {
                            Text("Challenge 1")
                        })
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
