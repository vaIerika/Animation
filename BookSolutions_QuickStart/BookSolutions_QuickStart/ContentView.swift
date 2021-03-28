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
                        Text("Challenge 1. Move Circle")
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
                            Text("Challenge 2. Login Form")
                        })
                }
                .padding(.top, 10)
                .padding(.bottom, 20)
                
                /// chapter 3
                Text("Chapter 3. Animation triggers")
                    .font(.title2)
                VStack(alignment: .leading) {
                    NavigationLink(
                        destination: ButtonMenuView(),
                        label: {
                            Text("Button. Menu")
                        })
                    NavigationLink(
                        destination: SliderGlassView(),
                        label: {
                            Text("Slider. Glass half full")
                        })
                    NavigationLink(
                        destination: RandomCirclesView(),
                        label: {
                            Text("Stepper. Randome circles position")
                        })
                    NavigationLink(
                        destination: DradGestureMenuView(),
                        label: {
                            Text("Drag gesture. Menu")
                        })
                    NavigationLink(
                        destination: LongPressGestureWavesView(),
                        label: {
                            Text("Long Press gesture. Waves")
                        })
                    NavigationLink(
                        destination: GestureMagnificationView(),
                        label: {
                            Text("Magnification gesture. Zoom")
                        })
                    NavigationLink(
                        destination: RotationGestureGearsView(),
                        label: {
                            Text("Rotation gesture. Gears")
                        })
                    NavigationLink(
                        destination: ParallaxScrollingEffectView(),
                        label: {
                            Text("Parallax Scrolling Effect")
                        })
                    NavigationLink(
                        destination: PopupView(),
                        label: {
                            Text("Exercise: Popup")
                        })
                    NavigationLink(
                        destination: ZoomImageInArticle(),
                        label: {
                            Text("Challenge 3. Image in article")
                        })
                }
                .padding(.top, 10)
                .padding(.bottom, 20)
                
                /// chapter 4
                Text("Chapter 4. Animation options")
                    .font(.title2)
                
                VStack(alignment: .leading) {
                    NavigationLink(
                        destination: RepeatingAnimationView(),
                        label: {
                            Text("Repeating Animation")
                        })
                }
                
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
