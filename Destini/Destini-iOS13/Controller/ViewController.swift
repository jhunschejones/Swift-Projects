//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    
    var story = Story()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstScene = story.getScene(1)!
        displayScene(scene: firstScene)
    }
    
    @IBAction func choiceButtonClicked(_ sender: UIButton) {
        let destinationScene = sender.tag
        let nextScene = story.getScene(destinationScene)
        if nextScene == nil { return }
        
        displayScene(scene: nextScene!)
    }
    
    func displayScene(scene: Scene) {
        storyText.text = scene.text
        
        choiceOneButton.setTitle(scene.choiceOne == nil ? "The" : scene.choiceOne!.text, for: .normal)
        choiceOneButton.tag = scene.choiceOne == nil ? 1 : scene.choiceOne!.destinationScene
        
        choiceTwoButton.setTitle(scene.choiceTwo == nil ? "End" : scene.choiceTwo!.text, for: .normal)
        choiceTwoButton.tag = scene.choiceTwo == nil ? 1 : scene.choiceTwo!.destinationScene
    }
    
}
