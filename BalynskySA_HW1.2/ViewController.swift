//
//  ViewController.swift
//  BalynskySA_HW1.2
//
//  Created by Macbook on 19.05.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

var counter = 0
let lightON: CGFloat = 1
let lightOff: CGFloat = 0.3

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yollowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var downButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        downButton.layer.cornerRadius = 20
        downButton.setTitle("START", for: .normal)
        
        redView.layer.cornerRadius = 50
        redView.alpha = lightOff
        
        yollowView.layer.cornerRadius = 50
        yollowView.alpha = lightOff
        
        greenView.layer.cornerRadius = 50
        greenView.alpha = lightOff
        
    }

    @IBAction func downButtonPress() {
        
        
        if  counter == 0 {
            redView.alpha = lightON
            counter = 1
        } else if counter == 1 {
            yollowView.alpha = lightON
            redView.alpha = lightOff
            counter = 2
        } else if counter == 2 {
            greenView.alpha = lightON
            yollowView.alpha = lightOff
            counter = 3
        } else if counter == 3 {
            greenView.alpha = lightOff
            redView.alpha = lightON
            counter = 1
        }
         downButton.setTitle("NEXT", for: .normal)
    }
    
}

