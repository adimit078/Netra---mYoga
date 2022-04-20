//
//  upcomingViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 12/4/21.
//

import UIKit

struct myVariables {
    static var week = Int()
}

class upcomingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    let myData = ["Week 1","Week 2","Week 3","Week 4","Week 5","Week 6"]

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleView: UIView!
    
    
    override func viewDidLoad() {
    
        backButton.layer.cornerRadius = 20
        startButton.layer.cornerRadius = 20
        titleView.layer.cornerRadius = 25
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myVariables.week = Int(indexPath.row) + 1
        self.performSegue(withIdentifier: "goToWeek", sender: self)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationVC = segue.destination as! exercisesViewController
//        destinationVC.weekNumber = week
//    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)    }
    
    @IBAction func continuePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goNext", sender: self)
    }
}
