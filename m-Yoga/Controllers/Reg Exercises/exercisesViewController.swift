//
//  exercisesViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 4/19/22.
//

import UIKit

class exercisesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var weekLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleView: UIView!
    
    var mainArray = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.layer.cornerRadius = 20
        continueButton.layer.cornerRadius = 20
        titleView.layer.cornerRadius = 25

        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        weekLabel.text = "Week: \(myVariables.week)"
        if myVariables.week == 1 {
            mainArray = ["one", "two", "three", "four", "alladis1"]
        } else if myVariables.week == 2 {
            mainArray = ["one", "two", "three", "four", "alladis2"]
        }else if myVariables.week == 3 {
            mainArray = ["one", "two", "three", "four", "alladis3"]
        }else if myVariables.week == 4 {
            mainArray = ["one", "two", "three", "four", "alladis4"]
        }else if myVariables.week == 5 {
            mainArray = ["one", "two", "three", "four", "alladis5"]
        }else if myVariables.week == 6 {
            mainArray = ["one", "two", "three", "four", "alladis6"]
        }
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        cell.textLabel?.text = mainArray[indexPath.row]
        return cell
    }
    

    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
