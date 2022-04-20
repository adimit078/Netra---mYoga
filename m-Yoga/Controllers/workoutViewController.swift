//
//  workoutViewController.swift
//  m-Yoga
//
//  Created by Aditya Mittal on 10/26/21.
//

import UIKit
import AVFoundation
import UIKit
import youtube_ios_player_helper


class workoutViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var timer = 30
    var counter = Int()
    @IBOutlet var playerView: YTPlayerView!
    
    @IBOutlet weak var endButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 0
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "head presses", ofType: "mp4")!))
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        playerView.layer.addSublayer(layer)
        
        endButton.layer.cornerRadius = 20
        skipButton.layer.cornerRadius = 20
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override var shouldAutorotate: Bool {
        return false
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeRight
    }

    
    @objc func updateCounter() {
        if timer > 0 {
            timer -= 1
            timerLabel.text = String(timer)
        } else {
            skipButton.setTitle("NEXT", for: .normal)
        }
    }
    
    @IBAction func skipPressed(_ sender: UIButton) {
        counter += 1
        print(counter)
    }

}

