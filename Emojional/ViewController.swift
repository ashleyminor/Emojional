//
//  ViewController.swift
//  Emojional
//
//  Created by Ashley Minor on 5/12/19.
//  Copyright © 2019 Ashley Minor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     let emojis = ["😻": "happy kitty", "🙀": "sad kitty"]
     let customMessages = [
        "happy kitty": ["Give your pet a treat!", "Hug your pet. <3", "Go for a walk."],
        "sad kitty": ["Teach your pet a new trick.", "Maybe it's time for a trip to the vet.", "Is something wrong?"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        let emotionAlerts = customMessages[emojis[selectedEmotion!]!]
        let randomPhrase = Int.random(in: 0 ..< emotionAlerts!.count)
        let emojiMessage = emotionAlerts?[randomPhrase]
        
        let alertController = UIAlertController(title: "Animal Advice", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Got it!", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)}

}

