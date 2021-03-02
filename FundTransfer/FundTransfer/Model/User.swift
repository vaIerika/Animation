//
//  User.swift
//  FundTransfer
//
//  Created by Valerie 👩🏼‍💻 on 02/03/2021.
//

import SwiftUI

struct User: Identifiable {
    let id: Int
    let imageName: String
    let offsetValue: CGPoint
    
    var selected = false
}

struct Data {
    static let userData = [
        User(id: 0, imageName: "alex_pp", offsetValue: CGPoint(x: 80, y: 120)),
        User(id: 1, imageName: "jennifer_pp", offsetValue: CGPoint(x: 140, y: 0)),
        User(id: 2, imageName: "lisa_pp", offsetValue: CGPoint(x: 20, y: -145)),
        User(id: 3, imageName: "mike_pp", offsetValue: CGPoint(x: -140, y: -70)),
        User(id: 4, imageName: "sandra_pp", offsetValue: CGPoint(x: -80, y: 120)),
        
        User(id: 5, imageName: "travis_pp", offsetValue: CGPoint(x: 80, y: 120)),
        User(id: 6, imageName: "oliva", offsetValue: CGPoint(x: 140, y: 0)),
        User(id: 7, imageName: "blake", offsetValue: CGPoint(x: 20, y: -145)),
        User(id: 8, imageName: "carl", offsetValue: CGPoint(x: -140, y: -70)),
        User(id: 9, imageName: "dale", offsetValue: CGPoint(x: -80, y: 120)),
        
        User(id: 10, imageName: "elon", offsetValue: CGPoint(x: 80, y: 120)),
        User(id: 11, imageName: "mark", offsetValue: CGPoint(x: 140, y: 0)),
        User(id: 12, imageName: "john", offsetValue: CGPoint(x: 20, y: -145)),
        User(id: 13, imageName: "kat", offsetValue: CGPoint(x: -140, y: -70)),
        User(id: 14, imageName: "mila", offsetValue: CGPoint(x: -80, y: 120))
    ]
}
