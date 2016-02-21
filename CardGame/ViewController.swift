//
//  ViewController.swift
//  CardGame
//
//  Created by King Justin on 2/20/16.
//  Copyright © 2016 justinleesf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var roundUIButton: UIButton!
    @IBOutlet weak var secondCardView: UIImageView!
    @IBOutlet weak var firstCardView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func roundUIButtonTapped(sender: UIButton) {
        
        let one = "hello"
        
        let two = "bye"
        
        if (self.roundUIButton.titleLabel != one) {
                    self.roundUIButton.setTitle(two, forState: UIControlState.Normal)
            self.firstCardView.addMotionEffect(<#T##effect: UIMotionEffect##UIMotionEffect#>)
            
        }
        else if (self.roundUIButton.titleLabel == two) {
            
            self.roundUIButton.setTitle(one, forState: UIControlState.Normal)
            
        }

    }

}

