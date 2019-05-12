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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
         let selectedEmotion = sender.titleLabel?.text
        
        let alertController = UIAlertController(title: "title", message: emojis[selectedEmotion!], preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)}

}

