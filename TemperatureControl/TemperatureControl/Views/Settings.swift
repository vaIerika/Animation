//
//  Settings.swift
//  TemperatureControl
//
//  Created by Valerie 👩🏼‍💻 on 01/03/2021.
//

import SwiftUI

struct SmartScheduleView: View {
    var body: some View {
        HStack {
            Image(systemName: "stopwatch")
                .foregroundColor(.gray)
            Text("Set smart schedule")
                .font(.system(size: 14, weight: .bold, design: .monospaced))
                .foregroundColor(.red)
        }
    }
}

struct ModeSelectionView: View {
    @ObservedObject var modeSelector = ModeSelector()
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(modeSelector.modes) { mode in
                ModeView(mode: mode)
                    .onTapGesture {
                        withAnimation {
                            modeSelector.selectMode(with: mode.id)
                        }
                    }
            }
        }
        .foregroundColor(.gray)
        .onAppear {
            modeSelector.selectMode(with: 0)
        }
    }
}

struct ModeView: View {
    let mode: Mode
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: mode.selected ? 0.0 : 2.0)
                .frame(width: 50, height: 50)
            Circle()
                .fill(mode.selected ? Color.red : Color.clear)
                .frame(width: 50, height: 50)
            
            Image(systemName: mode.imageName)
                .renderingMode(.template)
                .foregroundColor(mode.selected ? .white : .gray)
        }
    }
}

struct FanSpeedView: View {
    @State private var sliderValue = 4.0
    
    var body: some View {
        HStack {
            Image(systemName: "bonjour")
                .foregroundColor(.gray)
            Slider(value: $sliderValue, in: 0...10)
                .accentColor(.red)
        }
    }
}

struct PowerView: View {
    var body: some View {
        HStack {
            Image(systemName: "power")
                .font(.system(size: 24, weight: .black))
                .foregroundColor(.gray)
            Text("Hold to turn off")
                .font(.system(size: 14, weight: .regular, design: .monospaced))
                .foregroundColor(.gray)
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle().ignoresSafeArea()
            VStack(alignment: .leading, spacing: 30) {
                SmartScheduleView()
                ModeSelectionView()
                ModeView(mode: Mode(id: 1, imageName: ""))
                FanSpeedView()
                PowerView()
            }
        }
    }
}
