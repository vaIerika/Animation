//
//  ActivityDataView.swift
//  Activity Tracker
//
//  Created by Valerie 👩🏼‍💻 on 28/03/2021.
//

import SwiftUI

struct ActivityDataView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.appWhite)
                .ignoresSafeArea()
            
            VStack {
                TopView()
                ActivityMenuView()
                ActivityGraphView()
                ActivityValueView()
            }
            .padding(.horizontal)
        }
    }
}

struct TopView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.left")
                })
                Text("Monday")
                
                Text("Oct 29, 2028")
            }
            
            Spacer()
        }
    }
}

struct ActivityMenuView: View {
    var body: some View {
        ZStack {
            
        }
    }
}

struct ActivityMenuItemView: View {
    var item: ValueItem
    
    var body: some View {
        ZStack {
            
        }
    }
}

struct ActivityGraphView: View {
    var body: some View {
        ZStack {
            
        }
    }
}

struct ActivityValueView: View {
    var body: some View {
        ZStack {
            
        }
    }
}

struct Value: View {
    var body: some View {
        ZStack {
            
        }
    }
}

struct ActivityDataView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDataView()
    }
}
