//
//  ContentView.swift
//  TemperatureControl
//
//  Created by Valerie 👩🏼‍💻 on 01/03/2021.
//

import SwiftUI
 
struct ContentView: View {
    @State private var temperature = 0
    
    var body: some View {
        ZStack {
            Rectangle().ignoresSafeArea()
            CircularWheel(temperature: $temperature)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Spacer()
                        /// temperature value text
                        TemperatureView(temperature: $temperature)
                            .padding(.leading, 30)
                        
                        /// smart schedule
                        SmartScheduleView()
                            .padding(.top, 80)
                        
                        /// mode selection view
                        ModeSelectionView()
                            .padding(.top, 20)
                        
                        /// fan speed slider
                        FanSpeedView()
                            .padding(.vertical, 40)
                            .padding(.trailing, 40)
                    }
                    .foregroundColor(.white)
                    .padding(.leading, 30)
                    
                    Spacer()
                }
                PowerView()
            }
            .padding(.top, 44)
            .padding(.bottom, 34)
            .frame(width: sceenWidth, height: sceenHeigth)
        }
    }
    
    // MARK: - Constants
    let sceenWidth = UIScreen.screens.first?.bounds.width
    let sceenHeigth = UIScreen.screens.first?.bounds.height
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
