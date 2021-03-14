//
//  ZoomImageInArticle.swift
//  BookSolutions_QuickStart
//
//  Created by Valerie 👩🏼‍💻 on 14/03/2021.
//

import SwiftUI

struct ZoomImageInArticle: View {
    @State private var showBiggerPicture = false
    @GestureState private var offsetText = CGSize.zero
    
    var body: some View {
        VStack {
            Text("Mountains").font(.title).bold()
            ZStack {
                Image("mountains")
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: showBiggerPicture ? 1000 : 400, height: showBiggerPicture ? 600 : 300)
            
            Button(action: { showBiggerPicture.toggle() }) {
                Image(systemName: showBiggerPicture ? "chevron.down" : "chevron.up").font(.headline)
            }
            .padding()
            
            Text("""
                A mountain is an elevated portion of the Earth's crust, generally with steep sides that show significant exposed bedrock. A mountain differs from a plateau in having a limited summit area, and is larger than a hill, typically rising at least 300 metres (1000 feet) above the surrounding land. A few mountains are isolated summits, but most occur in mountain ranges.
                
                Mountains are formed through tectonic forces, erosion, or volcanism, which act on time scales of up to tens of millions of years. Once mountain building ceases, mountains are slowly leveled through the action of weathering, through slumping and other forms of mass wasting, and through erosion by rivers and glaciers.

                Source: https://en.wikipedia.org/wiki/Mountain
                """)
                .padding([.horizontal, .bottom], 20)
               // .offset(y: offsetText.height)
                .gesture(
                    DragGesture(minimumDistance: 100)
                        .updating($offsetText, body: { (value, offsetText, transaction) in
                            offsetText = value.translation
                            if offsetText.height >= 100 {
                                showBiggerPicture = true

                            }
                            if offsetText.height <= -100 {
                                showBiggerPicture = false

                            }
                        })
                )
        }.animation(.default)
    }
}

struct ZoomImageInArticle_Previews: PreviewProvider {
    static var previews: some View {
        ZoomImageInArticle()
    }
}
