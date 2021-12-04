//
//  upcomingViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 12/4/21.
//

import UIKit

class upcomingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    let myData = ["Head Presses","Scalp Massage","Neck Rotation","Nadi Shodhan Pranayam","Childs Pose","Om Chanting"]

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
    
        backButton.layer.cornerRadius = 20
        startButton.layer.cornerRadius = 20
        
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = myData[indexPath.row]
        return cell
    }
    
    
}
