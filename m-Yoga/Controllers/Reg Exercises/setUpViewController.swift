//
//  setUpViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 4/20/22.
//

import UIKit

class setUpViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startButton.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }

    @IBAction func startPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToWorkout", sender: self)
    }
    
}
