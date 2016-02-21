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
        let firstRandomNumber = arc4random_uniform(12)+2
        let firstCardString:String = String(format:"card%i", firstRandomNumber)
        
        let secondRandomNumber = arc4random_uniform(12)+2
        let secondCardString: String = String(format: "card%i", secondRandomNumber)


        firstCardView.image = UIImage(named: firstCardString)
        
            
        secondCardView.image = UIImage(named: secondCardString)

    }

}

