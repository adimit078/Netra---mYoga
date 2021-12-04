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

    @IBOutlet weak var vidPlayer: UIImageView!
    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "head presses", ofType: "mp4")!))
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        playerView.layer.addSublayer(layer)
    }
    
    @objc func updateCounter() {
        if timer > 0 {
            timer -= 1
            timerLabel.text = String(timer)
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
