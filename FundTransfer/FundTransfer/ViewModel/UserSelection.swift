//
//  UserSelection.swift
//  FundTransfer
//
//  Created by Valerie 👩🏼‍💻 on 02/03/2021.
//

import SwiftUI

class UserSelection: ObservableObject {
    @Published var users: [User] = []
    @Published var isRefreshing = false
    
    var selectedUserId = -1
    var refreshCount = -1
    
    func updateUsers() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.users.removeAll()
            for i in Array(stride(from: self.refreshCount * 5, to: (self.refreshCount * 5) + 5, by: 1)) {
                self.users.append(Data.userData[i])
            }
            
            withAnimation(.linear(duration: 0.7)) {
                self.isRefreshing = false
            }
        }
    }
    
    func selectUser(with id: Int) {
        if let i = users.firstIndex(where: { $0.id == id }) {
            users[i].selected.toggle()
            
            if let j = users.firstIndex(where: { $0.id == selectedUserId }) {
                users[j].selected.toggle()
            }
            
            selectedUserId = id
        }
    }
    
    func refreshUsers() {
        isRefreshing = true
        refreshCount = (refreshCount + 1) % 3
        updateUsers()
    }
    
}
