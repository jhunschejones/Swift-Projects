//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let scenes = [
        1: Scene(text: "In your two long years on the mouse fire brigade, you've never seen anything like this. A beautiful popsicle stick house is fully ablaze on the outskirts of town as the mouse fire truck pulls up. The driver and you free the hose and run towards the building.", choiceOne: Choice(text: "Check the building for survivers", destinationScene: 2), choiceTwo: Choice(text: "Start spraying down the building", destinationScene: 5)),
        2: Scene(text: "As you run into the building, all you can smell is smoke. There's nobody on the first floor but as you round the living room there appear to be two sets of stairs; one leading up to a second story and another leading down.", choiceOne: Choice(text: "Head up the stairs", destinationScene: 3), choiceTwo: Choice(text: "Head down the stairs", destinationScene: 4)),
        3: Scene(text: "As you reach the top of the stairs, you hear a small mouse voice calling out from the bedroom. You burst through the door and see the smallest mouse mother with her two babies. Scooping them into your strong mouse arms, you jump through the window and slide down the roof to safety.", choiceOne: nil, choiceTwo: nil),
        4: Scene(text: "As you race down the stairs, you hear a cracking sound overhead. Suddenly, the whole house starts to come down. You grab your fire-mouse partner and climb through a basement window just as the house collapses into a blazing heap. Was there anyone in there to rescue? We'll never know....", choiceOne: nil, choiceTwo: nil),
        5: Scene(text: "Your fire-mouse partner and you pull out the mouse fire hose and start dousing the building. Luckily, the foundation was just about to catch fire when you arrived so it looks like you're going to be able to contain the blaze for now.", choiceOne: Choice(text: "Keep spraying the building", destinationScene: 6), choiceTwo: Choice(text: "Run in to find survivors", destinationScene: 2)),
        6: Scene(text: "As you continue to hose down the building, you notice that while blaze no longer appears out of control, it also doesn't seem to be stopping. Suddenly, you hear what sounds like a small cry from inside the house. Your mouse heart drops, that sounds like a mouse mother and her children!", choiceOne: Choice(text: "Run in to save them", destinationScene: 2), choiceTwo: Choice(text: "Call for backup", destinationScene: 7)),
        7: Scene(text: "You radio in for backup, but as your panicked little mouse voice rings out over the radio, you see there was a hidden blaze in the basement that you hadn't noticed. Suddenly, the flames lick around from the back of the building and the entire structure begins to crumble.", choiceOne: Choice(text: "Run in for the survivors", destinationScene: 2), choiceTwo: Choice(text: "Circle around back", destinationScene: 8)),
        8: Scene(text: "You circle around back and see that a window in the top story is open and three little, scared mouse faces are peering out. You grab the rescue tarp and hold it out as the mouse mother and her children leap to safety just seconds before the house comes down!", choiceOne: nil, choiceTwo: nil)
    ]
    
    func getScene(_ sceneNumber: Int) -> Scene? {
        return scenes[sceneNumber] == nil ? nil : scenes[sceneNumber]
    }
}
