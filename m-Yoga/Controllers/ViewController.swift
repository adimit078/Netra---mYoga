//
//  ViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 10/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yogaImage: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var startPracitce: UIButton!
    @IBOutlet weak var dojoImage: UIImageView!
    @IBOutlet weak var dojoPractice: UIButton!
    
    var date = Date()
    var calendar = Calendar.current
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        yogaImage.layer.cornerRadius = 20
        
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        let year = calendar.component(.year, from: date)
        
        startPracitce.layer.cornerRadius = 20
        dojoPractice.layer.cornerRadius = 20
        dojoImage.layer.cornerRadius = 20
        
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
        self.performSegue(withIdentifier: "1pressed", sender: self)
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



