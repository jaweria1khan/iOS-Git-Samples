//
//  ViewController.swift
//  customizedButtons
//
//  Created by Jaweria Khan on 02/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button2.layer.borderWidth = 3
        button2.layer.borderColor = UIColor.systemTeal.cgColor
        button2.layer.cornerRadius = 20
        button2.layer.shadowColor = UIColor.black.cgColor
        button2.layer.shadowOffset = CGSize(width: 5, height: 5)
        button2.layer.shadowRadius = 5
        button2.layer.shadowOpacity = 1.0
        
        button1.layer.borderWidth = 3
        button1.layer.borderColor = UIColor.systemTeal.cgColor
        button1.layer.cornerRadius = 20
        button1.layer.shadowColor = UIColor.black.cgColor
        button1.layer.shadowOffset = CGSize(width: 5, height: 5)
        button1.layer.shadowRadius = 5
        button1.layer.shadowOpacity = 1.0
        
        button3.layer.borderWidth = 3
        button3.layer.borderColor = UIColor.systemTeal.cgColor
        button3.layer.cornerRadius = 20
        button3.layer.shadowColor = UIColor.systemTeal.cgColor
        button3.layer.shadowOffset = CGSize(width: 5, height: 5)
        button3.layer.shadowRadius = 5
        button3.layer.shadowOpacity = 1.0
        
        button4.layer.borderWidth = 3
        button4.layer.borderColor = UIColor.systemTeal.cgColor
        button4.layer.cornerRadius = 20
        button4.layer.shadowColor = UIColor.black.cgColor
        button4.layer.shadowOffset = CGSize(width: 5, height: 5)
        button4.layer.shadowRadius = 5
        button4.layer.shadowOpacity = 1.0
        
        button5.layer.borderWidth = 3
        button5.layer.borderColor = UIColor.systemTeal.cgColor
        button5.layer.cornerRadius = 20
        button5.layer.shadowColor = UIColor.systemTeal.cgColor
        button5.layer.shadowOffset = CGSize(width: 5, height: 5)
        button5.layer.shadowRadius = 5
        button5.layer.shadowOpacity = 1.0
        
        
        
    }


}

