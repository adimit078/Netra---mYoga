//
//  workoutPageViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 10/24/21.
//

import UIKit

class workoutPageViewController: UIViewController {
    
    var date = Date()
    var calendar = Calendar.current
    var level = String()

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var workoutNumber: UILabel!
    @IBOutlet weak var percent: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var percentView: UIView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    
    @IBOutlet weak var levelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        let year = calendar.component(.year, from: date)
        
        print("it is \(month) \(day), \(year)")
        dateLabel.text = "\(month)/\(day)/\(year)"
        
        percentView.layer.cornerRadius = 20
        percentView.layer.borderColor = UIColor.gray.cgColor
        percentView.layer.borderWidth = 3
        
        button1.layer.cornerRadius = 10
        button1.layer.borderColor = UIColor.gray.cgColor
        button1.layer.borderWidth = 2
        
        button2.layer.cornerRadius = 10
        button2.layer.borderColor = UIColor.gray.cgColor
        button2.layer.borderWidth = 2
        
        button3.layer.cornerRadius = 10
        button3.layer.borderColor = UIColor.gray.cgColor
        button3.layer.borderWidth = 2
        
        button4.layer.cornerRadius = 10
        button4.layer.borderColor = UIColor.gray.cgColor
        button4.layer.borderWidth = 2
        
        button5.layer.cornerRadius = 10
        button5.layer.borderColor = UIColor.gray.cgColor
        button5.layer.borderWidth = 2
        
        button6.layer.cornerRadius = 10
        button6.layer.borderColor = UIColor.gray.cgColor
        button6.layer.borderWidth = 2
        
        button7.layer.cornerRadius = 10
        button7.layer.borderColor = UIColor.gray.cgColor
        button7.layer.borderWidth = 2
        
        levelLabel.text = level
    }

    @IBAction func backPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "backHome", sender: self)
    }
    
}
