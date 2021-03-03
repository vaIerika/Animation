//
//  ContentView.swift
//  CircularChart
//
//  Created by Valerie 👩🏼‍💻 on 03/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Rectangle().ignoresSafeArea()
            
            RingView(
                colors: [Color.purple.opacity(0.5), Color.blue.opacity(1)],
                width: 150,
                value: 0.85)
            
            RingView(
                colors: [Color.purple.opacity(0.7), Color.blue.opacity(0.7)])
            
            RingView(
                colors: [Color.purple.opacity(0.7), Color.blue.opacity(0.5)],
                width: 50,
                value: 0.7)
        }
    }
}

struct RingView: View {
    @State private var showAnimation = false
    var gradientType: GradientType = .linear
    var colors: [Color]
    var width: CGFloat = 100
    var value: CGFloat = 0.80

    var angularGradient: AngularGradient {
        AngularGradient(gradient: Gradient(colors: colors), center: .center, startAngle: .degrees(0), endAngle: .degrees(-350))
    }
    
    var linearGradient: LinearGradient {
        LinearGradient(gradient: Gradient(colors: colors), startPoint: .topTrailing, endPoint: .bottomLeading)
    }
    
    var body: some View {
        Circle()
            .trim(from: showAnimation ? (1 - value) : 0.99, to: 1)
            .stroke(linearGradient, style: StrokeStyle(lineWidth: 12, lineCap: .round))
            .rotationEffect(.degrees(90))
            .rotation3DEffect(
                Angle(degrees: 180),
                axis: (x: 1, y: 0, z: 0))
            .frame(width: width, height: width)
            .animation(.easeOut(duration: 0.7))
            .onTapGesture {
                showAnimation.toggle()
            }
        
            .onAppear {
                withAnimation(.easeOut(duration: 1)) {
                    showAnimation = true
                }
            }
    }
    
    enum GradientType { case angular, linear }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
