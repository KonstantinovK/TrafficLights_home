//
//  ViewController.swift
//  TrafficLights_home
//
//  Created by MacBook on 02.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var actionButton: UIButton!
    
    private var currentLightColor = CurrentLightColor.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.5
        redLightView.layer.cornerRadius = 70
        yellowLightView.alpha = 0.5
        yellowLightView.layer.cornerRadius = 70
        greenLightView.alpha = 0.5
        greenLightView.layer.cornerRadius = 70
        
        actionButton.layer.cornerRadius = 15
        
    }

    @IBAction func actionButtonFunc() {
        actionButton.setTitle("NEXT", for: .normal)
        
        switch currentLightColor {
                case .red:
                    greenLightView.alpha = 0.5
                    redLightView.alpha = 1
                    currentLightColor = .yellow
                case .yellow:
                    redLightView.alpha = 0.5
                    yellowLightView.alpha = 1
                    currentLightColor = .green
                case .green:
                    yellowLightView.alpha = 0.5
                    greenLightView.alpha = 1
                    currentLightColor = .red
                }
    }
}
    
    extension ViewController {
        enum CurrentLightColor {
            case red, yellow, green
        }
    
}

