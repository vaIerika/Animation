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
                HStack {
                    Spacer()
                    Text("Contents".uppercased()).font(.subheadline).opacity(0.5)
                }.padding(.vertical)
                
                /// chapter 1
                Text("Chapter 1. Getting started")
                    .font(.title2)
                NavigationLink(
                    destination: MoveCircleShape(),
                    label: {
                        Text("Challenge 1")
                    })
                    .padding(.top, 10)
                    .padding(.bottom, 20)
                
                /// chapter 2
                Text("Chapter 2. Basic animation")
                    .font(.title2)
                VStack(alignment: .leading) {
                    NavigationLink(
                        destination: HueRotationView(),
                        label: {
                            Text("Hue Rotation")
                        })
                    NavigationLink(
                        destination: AlignmentAnimation(),
                        label: {
                            Text("Alignment")
                        })
                    NavigationLink(
                        destination: RotationAnimation(),
                        label: {
                            Text("Rotation")
                        })
                    NavigationLink(
                        destination: SizeAnimation(),
                        label: {
                            Text("Scale vs Frame size")
                        })
                    NavigationLink(
                        destination: TextAnimation(),
                        label: {
                            Text("Text Animation")
                        })
                    NavigationLink(
                        destination: TrimAnimation(),
                        label: {
                            Text("Trim. Circle Stroke")
                        })
                    NavigationLink(
                        destination: FlyingAway(),
                        label: {
                            Text("Exercise: Flying away and back")
                        })
                    NavigationLink(
                        destination: LoginForm(),
                        label: {
                            Text("Challenge 2")
                        })
                }
                .padding(.top, 10)
                .padding(.bottom, 20)
                
                Spacer()
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
