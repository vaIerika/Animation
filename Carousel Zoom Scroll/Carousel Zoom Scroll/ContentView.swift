//
//  ContentView.swift
//  Carousel Zoom Scroll
//
//  Created by Valerie 👩🏼‍💻 on 19/04/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 50) {
                        ForEach(recipes) { recipe in
                            GeometryReader { geo in
                                NavigationLink(destination: RecipeView(image: recipe.imageName)) {
                                    VStack {
                                        let scale = getScale(proxy: geo)
                                        Image(recipe.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 150)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 5)
                                                    .stroke(lineWidth: 7)
                                                    .foregroundColor(.white)
                                            )
                                            .clipped()
                                            .cornerRadius(5)
                                            .shadow(color: Color.gray.opacity(0.5), radius: 5, y: 3)
                                            .scaleEffect(CGSize(width: scale, height: scale))
                                            .animation(.easeOut(duration: 0.5))
                                        
                                        VStack(spacing: 5) {
                                            Text(recipe.title)
                                                .font(.headline)
                                            Text(recipe.description)
                                                .font(.caption2)
                                                .lineLimit(2)
                                                .opacity(0.6)
                                        }
                                        .padding(.top, 25)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.black)
                                    }
                                }
                            }
                            .frame(width: 125, height: 300)
                        }
                    }
                    .padding(32)
                }
                
                Image("pexels-katya-3275708")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 500)
                
            }
            .navigationTitle("Recipes")
        }
    }
    
    private func getScale(proxy: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1
        
        let x = proxy.frame(in: .global).minX
        let diff = abs(x - 32)
        if diff < 100 {
            scale = 1 + (100 - diff) / 500
        }
        
        return scale
    }
    
    // MARK: - Model
    private struct Recipe: Identifiable {
        var id: String { imageName }
        var title: String
        var description: String
        var imageName: String
    }
    private let recipes: [Recipe] = [
        Recipe(title: "Energizer", description: "As a person who likes cooking, sometimes do you feel that you don't know what kind of food to cook? ...", imageName: "pexels-alleksana-4113885"),
        Recipe(title: "Red Love", description: "Too many recipes lead sometimes we don't know how to choose...", imageName: "pexels-karolina-grabowska-4020559"),
        Recipe(title: "Sunshine Smile", description: "We have collected 2,262 common and popular recipes. These recipes...", imageName: "pexels-katya-3275708"),
        Recipe(title: "Honey Sweet", description: "If you don't find the right recipe to cook, it's better to choose one at random. You can also generate...", imageName:  "pexels-olenka-sergienko-3604314"),
        Recipe(title: "Focus Coctails", description: "Usually food such as `tomato`, then select the quantity and click the Generate button to generate it...", imageName: "pexels-vicky-tran-3273989")
    ]
}

struct RecipeView: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
