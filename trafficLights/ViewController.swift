//
//  ViewController.swift
//  trafficLights
//
//  Created by Александр Макаров on 30.01.2020.
//  Copyright © 2020 Aleksander Makarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var blueLight: UIView!
    @IBOutlet var switchButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 60
        redLight.backgroundColor = UIColor.red.withAlphaComponent(0.3)
        greenLight.layer.cornerRadius = 60
        greenLight.backgroundColor = UIColor.green.withAlphaComponent(0.3)
        blueLight.layer.cornerRadius = 60
        blueLight.backgroundColor = UIColor.blue.withAlphaComponent(0.3)
        switchButton.setTitle("Start", for: .normal)
        switchButton.layer.cornerRadius = 7
    }
    @IBAction func buttonTouch() {
        if redLight.backgroundColor == UIColor.red.withAlphaComponent(0.3) &&
            greenLight.backgroundColor == UIColor.green.withAlphaComponent(0.3) &&
            blueLight.backgroundColor == UIColor.blue.withAlphaComponent(0.3)
        {
            redLight.backgroundColor = UIColor.red.withAlphaComponent(1)
            switchButton.setTitle("Next", for: .normal)
        }
        else if redLight.backgroundColor == UIColor.red.withAlphaComponent(1) &&
            greenLight.backgroundColor == UIColor.green.withAlphaComponent(0.3) &&
            blueLight.backgroundColor == UIColor.blue.withAlphaComponent(0.3)
        {
            greenLight.backgroundColor = UIColor.green.withAlphaComponent(1)
            redLight.backgroundColor = UIColor.red.withAlphaComponent(0.3)
            
        }
        else if redLight.backgroundColor == UIColor.red.withAlphaComponent(0.3) &&
            greenLight.backgroundColor == UIColor.green.withAlphaComponent(1) &&
            blueLight.backgroundColor == UIColor.blue.withAlphaComponent(0.3)
        {
            greenLight.backgroundColor = UIColor.green.withAlphaComponent(0.3)
            blueLight.backgroundColor = UIColor.blue.withAlphaComponent(1)
        }
        else if redLight.backgroundColor == UIColor.red.withAlphaComponent(0.3) &&
            greenLight.backgroundColor == UIColor.green.withAlphaComponent(0.3) &&
            blueLight.backgroundColor == UIColor.blue.withAlphaComponent(1)
        {
            redLight.backgroundColor = UIColor.red.withAlphaComponent(1)
            blueLight.backgroundColor = UIColor.blue.withAlphaComponent(0.3)
        }
    }
    
    
}

