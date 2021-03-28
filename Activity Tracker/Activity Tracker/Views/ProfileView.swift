//
//  ProfileView.swift
//  Activity Tracker
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .strokeBorder(lineWidth: 1)
                    .frame(width: 100, height: 100)
                Image("image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Margo Smith")
                    .font(.system(size: 22, weight: .semibold))
                
                HStack(spacing: 36) {
                    VStack {
                        Text("36")
                            .font(.system(size: 24, weight: .bold))
                        Text("workouts")
                    }
                    VStack {
                        Text("24")
                            .font(.system(size: 24, weight: .bold))
                        Text("hours")
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
