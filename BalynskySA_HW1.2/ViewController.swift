//
//  ViewController.swift
//  BalynskySA_HW1.2
//
//  Created by Macbook on 19.05.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

var counter = 0

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
        redView.alpha = 0.3
        
        yollowView.layer.cornerRadius = 50
        yollowView.alpha = 0.3
        
        greenView.layer.cornerRadius = 50
        greenView.alpha = 0.3
        
    }

    @IBAction func downButtonPress() {
        
        
        if  counter == 0 {
            redView.alpha = 1
            counter = 1
        } else if counter == 1 {
            yollowView.alpha = 1
            redView.alpha = 0.3
            counter = 2
        } else if counter == 2 {
            greenView.alpha = 1
            yollowView.alpha = 0.3
            counter = 3
        } else if counter == 3 {
            greenView.alpha = 0.3
            redView.alpha = 1
            counter = 1
        }
         downButton.setTitle("NEXT", for: .normal)
    }
    
}

