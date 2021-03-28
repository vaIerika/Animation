//
//  ClassicFireworkButtonViewController.swift
//  Fireworks
//
//  Created by Valerie 👩🏼‍💻 on 27/03/2021.
//

import UIKit

final class ClassicFireworkButtonViewController: UIViewController {
    @IBOutlet private var btn1: UIButton! {
        didSet {
            self.btn1.tag = 0
            self.btn1.setTitle("Button", for: .normal)
            self.btn1.backgroundColor = UIColor(.blue)
        }
    }

    private let fireworkController = ClassicFireworkController()

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.refresh()
    }

//    private func refresh() {
//        self.btn1.setTitle("Button", for: .normal)
//    }

    @IBAction private func btnTapped(sender: UIButton) {
       // self.checkSolution(selection: sender.tag, correct: self.correctSolutionIndex, button: sender)
        self.checkSolution(selection: 0, correct: 0, button: sender)
        
        UIView.animate(withDuration: 0.1, animations: {
            sender.transform = CGAffineTransform.identity
        }, completion: nil)
    }

    @IBAction private func buttonTouchedDown(sender: UIButton) {
        UIView.animate(withDuration: 0.05, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.95, y: 0.92)
        }, completion: nil)
    }

    @IBAction private func buttonTouchedUpOutside(sender: UIButton) {
        UIView.animate(withDuration: 0.1, animations: {
            sender.transform = CGAffineTransform.identity
        }, completion: nil)
    }

    private func checkSolution(selection: Int, correct: Int, button: UIButton) {
        guard selection == correct else { return }

        self.fireworkController.addFireworks(count: 2, sparks: 8, around: button)
        //self.refresh()
    }
}
