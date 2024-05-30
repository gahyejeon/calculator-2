//
//  ViewController.swift
//  calculator-2
//
//  Created by 내꺼다 on 5/29/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisply = display.text!
            display.text = textCurrentlyInDisply + digit
        } else {
            display!.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    

}

