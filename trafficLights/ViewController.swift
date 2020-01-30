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
        redLight.backgroundColor = UIColor.init(red: 1, green: 0, blue: 0, alpha: 0.3)
        greenLight.layer.cornerRadius = 60
        greenLight.backgroundColor = UIColor.init(red: 0, green: 1, blue: 0, alpha: 0.3)
        blueLight.layer.cornerRadius = 60
        blueLight.backgroundColor = UIColor.init(red: 0, green: 0, blue: 1, alpha: 0.3)
        switchButton.setTitle("Start", for: .normal)
        switchButton.layer.cornerRadius = 7
    }
    @IBAction func buttonTouch() {
    }
    

}

