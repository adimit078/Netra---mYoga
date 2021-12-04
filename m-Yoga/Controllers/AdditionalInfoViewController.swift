//
//  AdditionalInfoViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 10/23/21.
//

import UIKit

class AdditionalInfoViewController: UIViewController {

    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        continueButton.layer.cornerRadius = 20
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    

    @IBAction func continuePressed(_ sender: UIButton) {
        Core.shared.setIsNotNewUser()
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        return
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}
