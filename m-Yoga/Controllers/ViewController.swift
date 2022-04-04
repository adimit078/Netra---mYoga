//
//  ViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 10/22/21.
//

import UIKit

class ViewController: UIViewController {

    
    //Images
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var regImage: UIImageView!
    @IBOutlet weak var dojImage: UIImageView!
    @IBOutlet weak var sosImage: UIImageView!
    
    //Labels
    @IBOutlet weak var regWeeksLabel: UILabel!
    @IBOutlet weak var dojWeeksLabel: UILabel!
    @IBOutlet weak var sosWeeksLabel: UILabel!
    
    //Buttons
    @IBOutlet weak var regStartButton: UIButton!
    
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dojStartButton: UIButton!
    @IBOutlet weak var sosStartButton: UIButton!
    
    @IBOutlet weak var regViewAll: UIButton!
    @IBOutlet weak var dojViewAll: UIButton!
    @IBOutlet weak var sosViewAll: UIButton!
    
    //Views
    @IBOutlet weak var controlView: UIView!
    
    var date = Date()
    var calendar = Calendar.current
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Image Structs
        profilePic.layer.cornerRadius = 1
        regImage.layer.cornerRadius = 20
        dojImage.layer.cornerRadius = 20
        sosImage.layer.cornerRadius = 20
        
        //Label Structs
        regWeeksLabel.layer.masksToBounds = true
        regWeeksLabel.layer.cornerRadius = 10
        dojWeeksLabel.layer.masksToBounds = true
        dojWeeksLabel.layer.cornerRadius = 10
        sosWeeksLabel.layer.masksToBounds = true
        sosWeeksLabel.layer.cornerRadius = 10
        
        //Button Structs
        regStartButton.layer.cornerRadius = 20
        dojStartButton.layer.cornerRadius = 20
        sosStartButton.layer.cornerRadius = 20
        
        //View Structs
        controlView.layer.borderWidth = 1
        
        //Date Calculations
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        let year = calendar.component(.year, from: date)

        print("it is \(month) \(day), \(year)")
        dateLabel.text = "\(month)/\(day)/\(year)"
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if Core.shared.isNewUser() {
            let vc = storyboard?.instantiateViewController(withIdentifier: "welcome")
            vc!.modalPresentationStyle = .fullScreen
            present(vc!, animated: true)
        }
    }

    
    @IBAction func level1Pressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "1Pressed", sender: self)
    }
    
    
    @IBAction func sosButtonPressed(_ sender: UIButton) {
        
    }
    

}

class Core {
    
    static let shared = Core()
    
    func isNewUser() -> Bool{
        return !UserDefaults.standard.bool(forKey: "isNewUser")
    }
    
    ///
    func setIsNotNewUser(){
        UserDefaults.standard.set(true, forKey: "isNewUser")
    }
}



