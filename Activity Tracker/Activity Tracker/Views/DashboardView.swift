//
//  DashboardView.swift
//  Activity Tracker
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 10, y: 10)
                
                VStack {
                    Text("6382")
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundColor(.appBlue)
                    Text("Steps")
                }
            }
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 10, y: 10)
                
                VStack {
                    Text("1107")
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundColor(.appBlue)
                    Text("kCal")
                }
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
