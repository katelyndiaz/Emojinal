//
//  ViewController.swift
//  Emojinal
//
//  Created by Katelyn D on 8/12/19.
//  Copyright © 2019 Katelyn D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🧘":"calm", "😡":"Angry/frustrated"]
    
    let customMessages = [
        "calm": ["I'm glad your day has been going well", "Share your calm with someone else", "start stressing: you have work to do"],
        "Angry/frustrated": ["Take a step back from what's making you angry", "Breathe; I promise it will get better soon.", "It's okay to be angry. Calm down by looking at puppy gifs."]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        @IBAction func showMessage(sender: UIButton) {
            
            if let selectedEmotion = sender.titleLabel?.text{
                let titleText = "We all have emotions"
                let randomNum = Int.random(in: 0...2)
                let messageText = (customMessages[emojis[selectedEmotion]!]!.count)-1
              
            
                let emojiMessage = customMessages[emojis[selectedEmotion]!]?[0]
                
            let alertController = UIAlertController(title: "\(titleText)", message: "\(messageText)", preferredStyle:UIAlertController.Style.alert)
            
            
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController, animated: true, completion:nil)
        
            }

    }

}
