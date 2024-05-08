//
//  ViewController.swift
//  TrafficLight
//
//  Created by Анна Белова on 07.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    private let switchOn: CGFloat = 1
    private let switchOff: CGFloat = 0.3
    
    private var redLight = true
    private var yellowLight = false
    private var greenLight = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        redLightView.alpha = switchOff
        redLightView.layer.cornerRadius = 50
       
        yellowLightView.alpha = switchOff
        yellowLightView.layer.cornerRadius = 50
        
        greenLightView.alpha = switchOff
        greenLightView.layer.cornerRadius = 50
    }

    
    
    @IBAction func lightSwitchButtonDidTap(_ sender: UIButton) {
        
        sender.setTitle("NEXT", for: .normal)
        
        if redLight {
            redLightView.alpha = switchOn
            yellowLightView.alpha = switchOff
            greenLightView.alpha = switchOff
            yellowLight = true
            redLight = false
        } else if yellowLight {
            redLightView.alpha = switchOff
            yellowLightView.alpha = switchOn
            greenLight = true
            yellowLight = false
        } else if greenLight {
            yellowLightView.alpha = switchOff
            greenLightView.alpha = switchOn
            greenLight = false
            redLight = true
        }
        
    }
}

