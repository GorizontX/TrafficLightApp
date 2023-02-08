//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Andrey Machulin on 08.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redViewLabel: UIView!
    @IBOutlet var yellowViewLabel: UIView!
    @IBOutlet var greenViewLabel: UIView!
    
    @IBOutlet var startButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        redViewLabel.layer.cornerRadius = redViewLabel.frame.height / 2
        yellowViewLabel.layer.cornerRadius = yellowViewLabel.frame.height / 2
        greenViewLabel.layer.cornerRadius = greenViewLabel.frame.height / 2
        
        redViewLabel.alpha = 0.3
        yellowViewLabel.alpha = 0.3
        greenViewLabel.alpha = 0.3
        
    }

    @IBAction func startButtonPressed() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        if redViewLabel.alpha == 1 {
            redViewLabel.alpha = 0.3
            yellowViewLabel.alpha = 1
        } else if yellowViewLabel.alpha == 1 {
            yellowViewLabel.alpha = 0.3
            greenViewLabel.alpha = 1
        } else {
            greenViewLabel.alpha = 0.3
            redViewLabel.alpha = 1
        }
        
    }
    

}

