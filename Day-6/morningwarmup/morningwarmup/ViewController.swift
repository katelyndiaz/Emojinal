//
//  ViewController.swift
//  morningwarmup
//
//  Created by Elizabeth Song on 8/12/19.
//  Copyright © 2019 elizabeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var authorArray : [String] = []
    var counter = 0
    
    var quoteDict = [
        "Shakespeare": "To be or not to be",
        "Martin Luther King": "I have a dream",
        "Abraham Lincoln": "Four score and 7 years ago"
    ]
    
    @IBOutlet weak var quoteLabel: UILabel!
    

    override func viewDidLoad() {
        for (thisAuthor, thisQuote) in quoteDict{
            authorArray.append(thisAuthor)
        }
        var currentQuote = quoteDict[authorArray[0]]!
        quoteLabel.text = currentQuote
        
        print("\(currentQuote) is one of the quotes of the author \(authorArray[0])")

        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //only press button 2 times or it will break 
    @IBAction func changeButton(_ sender: Any) {
        counter += 1
        var currentQuote = quoteDict[authorArray[counter]]!
        quoteLabel.text = currentQuote
      
        }

}

