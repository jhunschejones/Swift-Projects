//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        dimButton(button: sender)
        if (sender.currentTitle == nil) { return }
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        if (url == nil) { return }
        // Change default audio session to a different catagory so that the sound
        // plays even when the device is in silent mode
        try! AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try! AVAudioSession.sharedInstance().setActive(true)
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func dimButton(button: UIButton) {
        button.alpha = 0.5
        // Return to origional opacity after 0.2s delay
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(200)) { button.alpha = 1.0 }
    }
}

