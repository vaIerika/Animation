//
//  HeaderView.swift
//  FundTransfer
//
//  Created by Valerie 👩🏼‍💻 on 02/03/2021.
//

import SwiftUI

struct TopNavView: View {
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(Color.white)
                    .offset(x: 10)
                Circle()
                    .fill(Color.white)
                Circle()
                    .fill(Color.white)
                    .offset(y: 10)
                
            }
            .frame(width: 5, height: 5)
            .padding(20)
            
            Spacer()
            
            ZStack {
                Image(systemName: "ellipsis.bubble")
                    .foregroundColor(.white)
                Circle()
                    .fill(Color.orangeColor)
                    .frame(width: 5, height: 5)
                    .offset(x: 7, y: -7)
            }
            
            .padding(20)
        }
    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            Text("Tap to Pay")
                .font(.system(size: 22, weight: .bold, design: .rounded))
            Text("On click to fund transfer")
                .font(.system(size: 12, design: .rounded))
        }
        .foregroundColor(.white)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TopNavView()
            TitleView()
            Spacer()
        }
        .padding(.vertical, 50)
        .background(Color.background)
        .ignoresSafeArea()
    }
}
