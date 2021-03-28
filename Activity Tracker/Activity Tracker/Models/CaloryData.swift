//
//  CaloryData.swift
//  Activity Tracker
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import Foundation

struct CaloryData: Identifiable {
    let id = UUID()
    let hour: String
    let value: Int
}
