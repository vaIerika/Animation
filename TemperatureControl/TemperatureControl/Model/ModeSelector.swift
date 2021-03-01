//
//  ModeSelector.swift
//  TemperatureControl
//
//  Created by Valerie 👩🏼‍💻 on 01/03/2021.
//

import Foundation

class ModeSelector: ObservableObject {
    @Published var modes = Data.modeData
    var selectedModeIndex = -1
    
    func selectMode(with index: Int) {
        modes[index].selected.toggle()
        
        if selectedModeIndex != -1 {
            modes[selectedModeIndex].selected.toggle()
        }
        
        selectedModeIndex = index
    }
}

struct Mode: Identifiable {
    let id: Int
    let imageName: String
    var selected = false
}

struct Data {
    static let modeData: [Mode] = [
        Mode(id: 0, imageName: "snow"),
        Mode(id: 1, imageName: "drop.fill"),
        Mode(id: 2, imageName: "sun.max.fill")
    ]
}
