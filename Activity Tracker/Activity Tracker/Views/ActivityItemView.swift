//
//  ActivityItemView.swift
//  Activity Tracker
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import SwiftUI

struct ActivityItemView: View {
    let activityItem: ActivityItem
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .trim(from: 0, to: activityItem.progress)
                    .stroke(activityItem.color, lineWidth: 3)
                    .frame(width: 80, height: 80)
                
                Image(systemName: activityItem.imageName)
                    .foregroundColor(activityItem.color)
                    .rotationEffect(.degrees(activityItem.imageRotation))
            }
            Text(activityItem.title)
                .font(.system(size: 14))
        }
    }
}

struct ActivityItemView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityItemView(activityItem: ActivityItem(title: "walking", color: Color.purple, imageName: "figure.walk", imageRotation: 0, progress: 0.5))
    }
}
