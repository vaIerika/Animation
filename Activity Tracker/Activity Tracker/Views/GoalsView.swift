//
//  GoalsView.swift
//  Activity Tracker
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import SwiftUI

struct GoalsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
           Text("Goals")
            .font(.system(size: 22, weight: .semibold))
            ProgressWithGoalView(title: "50 workout", initial: 0, goal: 50, currentValue: 36, progressColor: .appSkyBlue)
            ProgressWithGoalView(title: "desired weight", initial: 55, goal: 61, currentValue: 58, progressColor: .appPurple, reverseGoal: true)
        }
    }
}

struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsView()
    }
}
