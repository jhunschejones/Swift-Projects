//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes = ["soft": 300, "medium": 420, "hard": 720]
    var timer = Timer()
    var seccondsPassed = 0
    var totalTime = 0
    var player: AVAudioPlayer!
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        if sender.currentTitle == nil { return }
        
        let hardness = sender.currentTitle!.lowercased()
        
        if eggTimes[hardness] != nil {
            titleLable.text = hardness.capitalized
            seccondsPassed = 0
            totalTime = eggTimes[hardness]!

            // We need to call this manually the first time because the timer
            // makes one loop before the first callback function invocation
            timerAction()
            
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        }
    }
    
    @objc func timerAction() {
        seccondsPassed += 1

        if seccondsPassed < totalTime {
            progressBar.progress = Float(seccondsPassed) / Float(totalTime)
        } else {
            progressBar.progress = 1.0
            titleLable.text = "Done!"
            timer.invalidate()
            playAlarm()
        }
    }
    
    func playAlarm() {
        guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }
        
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try? AVAudioSession.sharedInstance().setActive(true)
        
        player = try? AVAudioPlayer(contentsOf: url)
        player.play()
    }
}
