//
//  ViewController.swift
//  Sonar
//
//  Created by G.D. Sanders on 8/25/15.
//  Copyright © 2015 DigitalEquity, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rangeActivityLabel: UILabel!
    
    @IBOutlet weak var multipliedValueLabel: UILabel!
    
    @IBOutlet weak var sonarActiveLabel: UILabel!
    
    @IBOutlet weak var treasureFoundImageView: UIImageView!
    
    var currentRange: Int = 1
    
    var multipliedValue: Int = 5
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        rangeActivityLabel.text = currentRange.description
        multipliedValueLabel.text = "\(currentRange * multipliedValue)"
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sonarRangeTapped(sender: UIButton) {
        
        if (currentRange < 5) && (currentRange > 0) {
            currentRange += 1
        }
        else {
            currentRange = 5
        }
        
        rangeActivityLabel.text = "\(currentRange)"
        
        let sonarDistance = currentRange * multipliedValue
        
        multipliedValueLabel.text = "\(sonarDistance)"
    }
    
    
    @IBAction func pingButtonTapped(sender: UIButton) {
        
        for times in 1...currentRange {
            sonarActiveLabel.text = "Sonar firing \(times)"
            print("Sonar fired \(times) \n ")
        }
        
        let sonarDistance = currentRange * multipliedValue
        
        if sonarDistance > 20 {
            treasureFoundImageView.image = UIImage(named: "kingTut")
            treasureFoundImageView.hidden = false
        }
        else if sonarDistance > 15 {
                treasureFoundImageView.image = UIImage(named: "helmet")
                treasureFoundImageView.hidden = false
            }
        }
    
    @IBAction func decreaseSonarRangeTapped(sender: UIButton) {
        if (currentRange < 20) && (currentRange > 0) {
            currentRange -= 1
        }
        else {
            currentRange = 5
        }
        
        rangeActivityLabel.text = "\(currentRange)"
        
        let sonarDistance = currentRange * multipliedValue
        
        multipliedValueLabel.text = "\(sonarDistance)"
    }
}
    

