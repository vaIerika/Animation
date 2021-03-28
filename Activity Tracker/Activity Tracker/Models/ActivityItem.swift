//
//  ActivityItem.swift
//  Activity Tracker
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import Foundation

struct ActivityItem: Identifiable {
    let id = UUID()
    let title: String
    let color: Color
    let imageName: String
    let imageRotation: Double
    let progress: CGFloat
}
