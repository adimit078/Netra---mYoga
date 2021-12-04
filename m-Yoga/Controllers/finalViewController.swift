//
//  finalViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 10/22/21.
//

import UIKit

class finalViewController: UIViewController {

    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var otherButton: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maleButton.layer.cornerRadius = 60
        maleButton.layer.borderWidth = 2
        maleButton.layer.backgroundColor = CGColor.init(gray: 70, alpha: 7)
        femaleButton.layer.cornerRadius = 60
        femaleButton.layer.borderWidth = 2
        femaleButton.layer.backgroundColor = CGColor.init(gray: 70, alpha: 7)
        otherButton.layer.cornerRadius = 60
        otherButton.layer.borderWidth = 2
        otherButton.layer.backgroundColor = CGColor.init(gray: 70, alpha: 7)
        
        continueButton.layer.cornerRadius = 30
    }
    
    var male = false
    var female = false
    var other = false
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToAdditional", sender: self)

    }
    
    @IBAction func maleButtonPressed(_ sender: UIButton) {
        male = !male
        if male == true {
        maleButton.backgroundColor = UIColor(red: 202/255, green: 124/255, blue: 214/255, alpha: 10)
        } else {
            maleButton.backgroundColor = UIColor.white
        }
    }
    
    @IBAction func femaleButtonPressed(_ sender: UIButton) {
        female = !female
        if female == true {
        femaleButton.backgroundColor = UIColor(red: 202/255, green: 124/255, blue: 214/255, alpha: 10)
        } else {
            femaleButton.backgroundColor = UIColor.white
        }
        
    }

    @IBAction func otherButtonPressed(_ sender: UIButton) {
        other = !other
        if other == true {
        otherButton.backgroundColor = UIColor(red: 202/255, green: 124/255, blue: 214/255, alpha: 10)
        } else {
            otherButton.backgroundColor = UIColor.white
        }
    }
    
}
