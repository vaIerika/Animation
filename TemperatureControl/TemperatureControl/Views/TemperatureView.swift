//
//  TemperatureView.swift
//  TemperatureControl
//
//  Created by Valerie 👩🏼‍💻 on 01/03/2021.
//

import SwiftUI

struct TemperatureView: View {
    @Binding var temperature: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Temperature,℉")
                .font(.system(size: 20, weight: .black, design: .monospaced))
            Text("\(temperature)")
                .font(.system(size: 80, weight: .black, design: .monospaced))
        }
        .foregroundColor(.white)
    }
}

struct CircularWheel: View {
    @Binding var temperature: Int
    @State private var rotate: CGFloat = 0.0
    @State private var dragValue: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 16, lineCap: .butt, dash: [2, 4]))
                .scaleEffect(1.05)
            
            Circle()
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 24, lineCap: .butt, dash: [2, 40]))
            
            Circle()
                .stroke(Color.red, lineWidth: 3)
                .scaleEffect(1.11)
                .overlay(
                    Circle()
                        .stroke(Color.red, lineWidth: 5)
                        .scaleEffect(1.15)
                        .blur(radius: 50)
                )
        }
        .rotationEffect(.degrees(Double(rotate)))
        .frame(width: 580, height: 580)
        .offset(x: 360)
        .gesture(
            DragGesture(minimumDistance: 5)
                .onChanged { value in
                    withAnimation(.easeIn(duration: 0.1)) {
                        changeValue(height: value.translation.height)
                    }
                }
                .onEnded { _ in
                    rotate = 0.0
                    dragValue = 0.0
                }
        )
    }
    
    private func changeValue(height: CGFloat) {
        let tempValue = dragValue
        dragValue = height
        rotate = height / 5 * (-1)
        let difference = tempValue - dragValue
        temperature = Int(CGFloat(temperature) + difference / 2)
    }
}

struct TemperatureCircularView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle().ignoresSafeArea()
            ZStack {
                CircularWheel(temperature: .constant(40)).ignoresSafeArea()
                  
                TemperatureView(temperature: .constant(40))
            }
        }
    }
}
