//
//  Colors.swift
//  Activity Tracker
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import SwiftUI

extension Color {
    static let appBlue = Color.init(red: 94/255, green: 112/255, blue: 216/255)
    static let appPurple = Color.init(red: 202/255, green: 87/255, blue: 227/255)
    static let appWhite = Color.init(red: 246/255, green: 247/255, blue: 248/255)
    static let appSkyBlue = Color.init(red: 81/255, green: 220/255, blue: 242/255)
    
    static let appGradient = LinearGradient(
        gradient: Gradient(colors: [appBlue, appBlue, appPurple]),
        startPoint: .top,
        endPoint: .bottom)
    
    static let appGradientTopLeadingToBottomTrailling = LinearGradient(
        gradient: Gradient(colors: [appBlue, appPurple]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    
    static let appGradientWhite = LinearGradient(
        gradient: Gradient(colors: [Color.white, Color.white]),
        startPoint: .top,
        endPoint: .bottom)
}
