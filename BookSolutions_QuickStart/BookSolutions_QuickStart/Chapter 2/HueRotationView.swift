//
//  HueRotationView.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 13/03/2021.
//

import SwiftUI

struct HueRotationView: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.purple)
                .hueRotation(Angle.degrees(change ? 170 : 0))
                .animation(.easeInOut)
            
         Image("umbrella")
            .resizable()
            .scaledToFit()
            .hueRotation(Angle.degrees(change ? 170 : 0))
            
            Button("Change colors") { change.toggle()}
        }
    }
}

struct HueRotationView_Previews: PreviewProvider {
    static var previews: some View {
        HueRotationView()
    }
}
