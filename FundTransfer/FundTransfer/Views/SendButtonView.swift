//
//  SendButtonView.swift
//  FundTransfer
//
//  Created by Valerie 👩🏼‍💻 on 02/03/2021.
//

import SwiftUI

struct SendButtonView: View {
    @State private var amount: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            Text("I want to fund transfer")
                .font(.system(size: 14, weight: .bold, design: .rounded))
                .padding(.bottom, 16)
            
            HStack {
                Text("$")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                TextField("", text: $amount)
                    .frame(width: 80)
            }
            .font(.system(size: 34, weight: .bold, design: .rounded))
            
            /// dotted line
            Line()
                .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [2, 3]))
                .frame(width: 200, height: 1)
                .padding(.vertical)
            
            Text("Only within your friends and family added in pay list")
                .font(.system(size: 12, design: .rounded))
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
            
            Button(action: {
                
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.orange)
                        .frame(width: 140, height: 60)
                    
                    Text("Send").bold()
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct SendButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle().fill(Color.background).ignoresSafeArea()
            VStack {
                Spacer()
                SendButtonView()
            }
        }
    }
}
