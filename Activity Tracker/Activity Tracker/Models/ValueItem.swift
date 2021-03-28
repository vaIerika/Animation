//
//  ValueItem.swift
//  Activity Tracker
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import Foundation

struct ValueItem: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let value: Int
    var selected: Bool
    let imageColor: Color
    let imageRotation: Double
    var caloryData: [CaloryData]
}
