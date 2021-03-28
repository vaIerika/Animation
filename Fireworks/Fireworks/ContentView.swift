//
//  ContentView.swift
//  Fireworks
//
//  Created by Valerie 👩🏼‍💻 on 27/03/2021.
//

import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            SparkViewRepresentative()
        }
    }
}


struct SparkViewRepresentative: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> ClassicFireworkButtonViewController {
         return ClassicFireworkButtonViewController()
     }
     
     func updateUIViewController(_ uiViewController: ClassicFireworkButtonViewController, context: Context) {
        uiViewController.showDetailViewController(uiViewController, sender: .none)
     }
    
//    func makeCoordinator() -> ClassicFireworkButtonViewController.Coordinator {
//        return Coordinator(self)
//    }
//
//    class Coordinator: NSObject, Fireworkdelega {
//        var parent: ClassicFireworkButtonViewController
//
//        init(_ parent: ClassicFireworkButtonViewController) {
//            self.parent = parent
//        }
//
//        func fontClassicFireworkButtonViewController(_ viewController: ClassicFireworkButtonViewController) {
//            //parent.font = viewController.selectedFontDescriptor
//        }
//    }
}
