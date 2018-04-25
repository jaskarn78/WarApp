//
//  ViewController.swift
//  WarApp
//
//  Created by Jaskarn Jagpal on 4/23/18.
//  Copyright © 2018 Jaskarn Jagpal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        //randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        // print("left random number is: \(leftRandomNumber)")

        let rightRandomNumber = arc4random_uniform(13) + 2
        // print("right random number is: \(rightRandomNumber)")
        
        //change the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        //compare the numbers
        if leftRandomNumber > rightRandomNumber {
            //update the socre
            leftScore += 1
            
            //update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            // Update the score
            rightScore += 1
            
            //Update the label
            rightScoreLabel.text = String(rightScore)
        }
        else if leftRandomNumber == rightRandomNumber {
            let alert = UIAlertController(title: "Its a tie!", message: "Continue?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
        }
    }
    

}

