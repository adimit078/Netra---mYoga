//
//  HomeViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 4/19/22.

import UIKit

class HomeViewController: UIViewController, UIApplicationDelegate {

    //Top Nav Bar
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var adminPic: UIImageView!
    
    //Images
    @IBOutlet weak var regImage: UIImageView!
    @IBOutlet weak var dojImage: UIImageView!
    @IBOutlet weak var sosImage: UIImageView!
    
    //Labels
    @IBOutlet weak var regLabel: UILabel!
    @IBOutlet weak var dojLabel: UILabel!
    @IBOutlet weak var sosLabel: UILabel!
    
    //Buttons
    @IBOutlet weak var regButton: UIButton!
    @IBOutlet weak var dojButton: UIButton!
    @IBOutlet weak var sosButton: UIButton!
    
    var date = Date()
    var calendar = Calendar.current
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Round View Corner
        topView.clipsToBounds = true
        topView.layer.cornerRadius = 30
        topView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        adminPic.layer.cornerRadius = 15
        
        //Image Structs
        regImage.layer.cornerRadius = 20
        dojImage.layer.cornerRadius = 20
        sosImage.layer.cornerRadius = 20
        
        //Label Structs
        regLabel.layer.masksToBounds = true
        regLabel.layer.cornerRadius = 10
        dojLabel.layer.masksToBounds = true
        dojLabel.layer.cornerRadius = 10
        sosLabel.layer.masksToBounds = true
        sosLabel.layer.cornerRadius = 10
        
        //Button Structs
        regButton.layer.cornerRadius = 20
        dojButton.layer.cornerRadius = 20
        sosButton.layer.cornerRadius = 20
        
        //Date Calculations
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        let year = calendar.component(.year, from: date)

        print("it is \(month) \(day), \(year)")
        dateLabel.text = "\(month)/\(day)/\(year)"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIDevice.current.setValue(UIDeviceOrientation.portrait.rawValue, forKey: "orientation")
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override var shouldAutorotate: Bool {
        return false
    }

    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }

    override open var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .portrait
    }
    
    @IBAction func regPracticePressed(_ sender: Any) {
        self.performSegue(withIdentifier: "weekFromReg", sender: self)
    }
    
}

extension UINavigationController {
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return topViewController?.supportedInterfaceOrientations ?? .allButUpsideDown
    }
}
