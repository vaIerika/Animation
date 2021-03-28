//
//  DailyActivityView.swift
//  Activity Tracker
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import SwiftUI

struct DailyActivityView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(height: 200)
                .shadow(color: Color.black.opacity(0.05), radius: 10, y: 10)
            
            VStack(alignment: .leading, spacing: 30) {
                Text("Daily Activity")
                    .font(.system(size: 22, weight: .semibold))
                
                HStack(spacing: 30) {
                    ActivityItemView(activityItem: Data.activityItems[0])
                    ActivityItemView(activityItem: Data.activityItems[1])
                    ActivityItemView(activityItem: Data.activityItems[2])
                }
            }
        }
    }
}

struct DailyActivityView_Previews: PreviewProvider {
    static var previews: some View {
        DailyActivityView()
    }
}
