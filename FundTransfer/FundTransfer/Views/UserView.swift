//
//  UserView.swift
//  FundTransfer
//
//  Created by Valerie 👩🏼‍💻 on 02/03/2021.
//

import SwiftUI

struct UserView: View {
    let user: User
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.background)
                .frame(width: 50, height: 50)
            Image(user.imageName)
                .resizable()
                .frame(width: 40, height: 40)
            
            ZStack {
                Circle()
                    .fill(Color.orangeColor)
                    .frame(width: 25, height: 25)
                Circle()
                    .fill(Color.background)
                    .frame(width: 20, height: 20)
                Image(systemName: "checkmark")
                    .font(.system(size: 10, weight: .bold))
                    .foregroundColor(.white)
            }
            .offset(x: 15, y: 15)
            .opacity(user.selected ? 1.0 : 0.0)
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(user: Data.userData[8])
    }
}
