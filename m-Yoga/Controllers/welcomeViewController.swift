//
//  welcomeViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 10/22/21.
//

import UIKit

class welcomeViewController: UIViewController {

    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var stressButton: UIButton!
    @IBOutlet weak var regularButton: UIButton!
    @IBOutlet weak var practiceButton: UIButton!
    @IBOutlet weak var relaxButton: UIButton!
    @IBOutlet weak var striveButton: UIButton!
    
    var pressed1 = false
    var pressed2 = false
    var pressed3 = false
    var pressed4 = false
    var pressed5 = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stressButton.layer.cornerRadius = 20
        stressButton.layer.borderWidth = 2
        stressButton.layer.borderColor = CGColor.init(gray: 100, alpha: 10)
        
        regularButton.layer.cornerRadius = 20
        regularButton.layer.borderWidth = 2
        regularButton.layer.borderColor = CGColor.init(gray: 100, alpha: 10)
        
        practiceButton.layer.cornerRadius = 20
        practiceButton.layer.borderWidth = 2
        practiceButton.layer.borderColor = CGColor.init(gray: 100, alpha: 10)
        
        relaxButton.layer.cornerRadius = 20
        relaxButton.layer.borderWidth = 2
        relaxButton.layer.borderColor = CGColor.init(gray: 100, alpha: 10)
        
        striveButton.layer.cornerRadius = 20
        striveButton.layer.borderWidth = 2
        striveButton.layer.borderColor = CGColor.init(gray: 100, alpha: 10)
        
        continueButton.layer.cornerRadius = 20
    }

    @IBAction func buttonTapped(_ sender: Any) {
    
        self.performSegue(withIdentifier: "goToFinal", sender: self)
    }
    
    @IBAction func sBPressed(_ sender: UIButton) {
        pressed1 = !pressed1
        if pressed1 == true {
            stressButton.layer.borderColor = UIColor.lightGray.cgColor
        } else {
            stressButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBAction func iBPressed(_ sender: UIButton) {
        pressed2 = !pressed2
        if pressed2 == true {
            regularButton.layer.borderColor = UIColor.lightGray.cgColor
        } else {
            regularButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBAction func iFBPressed(_ sender: UIButton) {
        pressed3 = !pressed3
        if pressed3 == true {
            practiceButton.layer.borderColor = UIColor.lightGray.cgColor
        } else {
            practiceButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBAction func hBPressed(_ sender: UIButton) {
        pressed4 = !pressed4
        if pressed4 == true {
            relaxButton.layer.borderColor = UIColor.lightGray.cgColor
        } else {
            relaxButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBAction func tBPressed(_ sender: UIButton) {
        pressed5 = !pressed5
        if pressed5 == true {
            striveButton.layer.borderColor = UIColor.lightGray.cgColor
        } else {
            striveButton.layer.borderColor = UIColor.white.cgColor
        }    }

}
