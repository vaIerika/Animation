//
//  RefreshView.swift
//  FundTransfer
//
//  Created by Valerie 👩🏼‍💻 on 02/03/2021.
//

import SwiftUI

struct RefreshView: View {
    @Binding var isRefreshing: Bool
    
    var body: some View {
        ZStack {
            RoundedHexagon()
                .fill(Color.orange)
                .frame(width: 84, height: 96)
                .shadow(color: Color.black.opacity(0.5), radius: 20, x: 10, y: 10)
            
            Image(systemName: "arrow.triangle.2.circlepath")
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.white)
                .rotationEffect(isRefreshing ? .degrees(360) : .zero)
        }
        .padding(.top, 20)
    }
}

struct HexagoanBackgroundView: View {
    var body: some View {
        ZStack {
            RoundedHexagon()
                .fill(Color.purpleGradient)
                .shadow(color: Color.black.opacity(0.3), radius: 30, x: 40, y: 40)
            
            RoundedHexagon()
                .fill(Color.purpleGradient)
                .shadow(color: Color.black.opacity(0.3), radius: 20, x: 30, y: 30)
                .scaleEffect(0.65)
        }
        .frame(width: 280, height: 320)
    }
}


struct RefreshView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            HexagoanBackgroundView()
            RefreshView(isRefreshing: .constant(false))
        }
    }
}
