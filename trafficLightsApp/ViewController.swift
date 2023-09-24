//
//  ViewController.swift
//  trafficLightsApp
//
//  Created by Егор Желабков on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var tapButton: UIButton!
    
    
    //загрузка экрана
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 80
        yellowView.layer.cornerRadius = 80
        greenView.layer.cornerRadius = 80
        
        redView.isHidden = false
        
        tapButton.layer.cornerRadius = 10
        tapButton.setTitle("Start", for: .normal)
        
        redView.backgroundColor = .red
        //redView.alpha = 0.5
        yellowView.backgroundColor = .yellow
        //yellowView.alpha = 0.5
        greenView.backgroundColor = .green
        //greenView.alpha = 0.5
        
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        
        //redView = #colorLiteral(red: 1, green: 0.0009044195067, blue: 0.01712076398, alpha: 1)
        tapButton.setTitle(redView.isHidden ? "Start" : "Next", for: .normal)
        
        if redView.backgroundColor == .red.withAlphaComponent(0.5)
            && yellowView.backgroundColor == .yellow.withAlphaComponent(0.5)
            && greenView.backgroundColor == .green.withAlphaComponent(0.5) {
            
            redView.backgroundColor = .red
            
        } else if redView.backgroundColor == .red {
            redView.backgroundColor = .red.withAlphaComponent(0.5)
            yellowView.backgroundColor = .yellow
            
        } else if yellowView.backgroundColor == .yellow {
            yellowView.backgroundColor = .yellow.withAlphaComponent(0.5)
            greenView.backgroundColor = .green
            
        } else if greenView.backgroundColor == .green {
            greenView.backgroundColor = .green.withAlphaComponent(0.5)
        }
    }
}

