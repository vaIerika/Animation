//
//  ContentView.swift
//  Activity Tracker
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.appGradient)
                        .frame(height: 270)
                    
                    Rectangle()
                        .fill(Color.appWhite)
                }
                .ignoresSafeArea()
                
                VStack(spacing: 30) {
                    ProfileView()
                        .padding(.bottom, 30)
                        .foregroundColor(.white)
                    NavigationLink(
                        destination: Text("Destination"),
                        tag: 1,
                        selection: .constant(1),
                        label: {
                            DailyActivityView()
                                .foregroundColor(.black)
                                .onTapGesture {
                                    selection = 1
                                }
                        })
                    DailyActivityView()
                    GoalsView()
                    DashboardView()
                    
                    Spacer()
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ProgressWithGoalView: View {
    let title: String
    let initial: Int
    let goal: Int
    let currentValue: Int
    let progressColor: Color
    var reverseGoal = false
    
    var body: some View {
        VStack(spacing: 4) {
            ProgressView(title, value: getCurrentPercentageValue(), total: 100)
                .accentColor(progressColor)
                .foregroundColor(Color.gray.opacity(0.5))
            
            HStack {
                Text("\(reverseGoal ? goal : initial)")
                Spacer()
                Text("\(reverseGoal ? initial : goal)")
            }
        }
    }
    
    func getCurrentPercentageValue() -> Double {
        let value = ((currentValue - initial) * 100) / (goal - initial)
        return Double(value)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
