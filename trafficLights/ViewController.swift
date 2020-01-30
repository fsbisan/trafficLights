//
//  ViewController.swift
//  trafficLights
//
//  Created by Александр Макаров on 30.01.2020.
//  Copyright © 2020 Aleksander Makarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOutlet
    @IBOutlet var redLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var blueLight: UIView!
    @IBOutlet var switchButton: UIButton!
    var lightOn: CGFloat = 1
    var lightOf: CGFloat = 0.3
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        redLight.backgroundColor = UIColor.red.withAlphaComponent(lightOf)
        
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        greenLight.backgroundColor = UIColor.green.withAlphaComponent(lightOf)
        
        blueLight.layer.cornerRadius = blueLight.frame.width / 2
        blueLight.backgroundColor = UIColor.blue.withAlphaComponent(lightOf)
        
        switchButton.setTitle("Start", for: .normal)
        switchButton.layer.cornerRadius = 7
    }
    //MARK: - IBActions
    @IBAction func buttonTouch() {
        if redLight.alpha == lightOf, redLight.alpha == lightOf, blueLight.alpha == lightOf {
            redLight.alpha = lightOn
            switchButton.setTitle("Next", for: .normal)
        } else if redLight.alpha == lightOn {
            greenLight.alpha = lightOn
            redLight.alpha = lightOf
        } else if greenLight.alpha == lightOn {
            greenLight.alpha = lightOf
            greenLight.alpha = lightOn
        } else if blueLight.alpha == lightOn {
            blueLight.alpha = lightOf
            redLight.alpha = lightOn
        }
    }
    
    
}

