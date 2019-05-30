//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by Nikolas Krecu on 1/24/19.
//  Copyright © 2019 Nikolas Krecu. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    @IBOutlet weak var ChosenImage: UIImageView!
    @IBOutlet weak var CPUImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    var game = ["Rock", "paper", "scissors"]
    
    @IBAction func rockTapped(_ sender: Any) {
        ChosenImage.image = UIImage(named:"Rock")
    }
    
    @IBAction func paperTapped(_ sender: Any) {
        ChosenImage.image = UIImage(named: "paper")
    }
    
    @IBAction func scissorsTapped(_ sender: Any) {
        ChosenImage.image = UIImage(named: "scissors")
    }
    
    @IBAction func whenButtonPressed(_ sender: Any) {
        let randomGame = game.randomElement()
        CPUImage.image = UIImage(named: randomGame!)
        
        if ChosenImage.image == UIImage(named: "Rock") && CPUImage.image == UIImage(named: "paper"){
             myLabel.text = "you lose"
        }
        if ChosenImage.image == UIImage(named: "Rock") && CPUImage.image == UIImage(named: "scissors"){
            myLabel.text = "You Win!!"
        }
        if ChosenImage.image == UIImage(named: "paper") && CPUImage.image == UIImage(named: "Rock"){
            myLabel.text = "you win!!"
        }
        if ChosenImage.image == UIImage(named: "paper") && CPUImage.image == UIImage(named: "scissors"){
            myLabel.text = "you lose"
            }
        if ChosenImage.image == UIImage(named:"scissors") && CPUImage.image == UIImage(named: "Rock"){
            myLabel.text = "you lose"
        }
        if ChosenImage.image == UIImage(named: "scissors") && CPUImage.image == UIImage(named: "paper"){
            myLabel.text = "you win!!"
        }
        if ChosenImage.image == UIImage(named: "Rock") &&
            CPUImage.image == UIImage(named: "Rock"){
            myLabel.text = "Draw"
        }
        if ChosenImage.image == UIImage(named: "paper") &&
            CPUImage.image == UIImage(named: "paper"){
            myLabel.text = "Draw"
        }
        
        if ChosenImage.image == UIImage(named: "scissors") &&
            CPUImage.image == UIImage(named: "scissors"){
            myLabel.text = "Draw"
        }
        


}
    @IBAction func safariWhenTapped(_ sender: Any) {
        if let url = URL(string: "www.apple.com"){
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
            
        }
        

      
    
    
   
        
    

}
}
