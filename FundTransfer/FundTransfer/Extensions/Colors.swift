//
//  Colors.swift
//  FundTransfer
//
//  Created by Valerie 👩🏼‍💻 on 02/03/2021.
//

import SwiftUI

extension Color {
    static let background = Color(red: 82/255, green: 82/255, blue: 191/255)
    static let lightPurple = Color(red: 93/255, green: 91/255, blue: 198/255)
    static let orangeColor = Color(red: 240/255, green: 125/255, blue: 81/255)
    
    static let purpleGradient = LinearGradient(gradient: Gradient(colors: [background, lightPurple]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
