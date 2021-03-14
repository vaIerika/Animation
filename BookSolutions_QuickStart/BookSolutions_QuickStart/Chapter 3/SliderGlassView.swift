//
//  SliderGlassView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 14/03/2021.
//

import SwiftUI

struct SliderGlassView: View {
    @State private var water: CGFloat = 50
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle().stroke().foregroundColor(.gray)
                VStack {
                    Color.white
                    Color.blue.frame(height: water)
                }
            }.frame(width: 100, height: 200)
            
            Slider(value: $water, in: 0...190, step: 1)
        }.padding()
    }
}

struct SliderGlassView_Previews: PreviewProvider {
    static var previews: some View {
        SliderGlassView()
    }
}
