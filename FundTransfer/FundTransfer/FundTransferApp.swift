//
//  FundTransferApp.swift
//  FundTransfer
//
//  Created by Valerie 👩🏼‍💻 on 02/03/2021.
//

import SwiftUI

@main
struct FundTransferApp: App {
    @StateObject var userSelection = UserSelection()
    
    var body: some Scene {
        WindowGroup {
            ContentView(userSelection: userSelection)
        }
    }
}
