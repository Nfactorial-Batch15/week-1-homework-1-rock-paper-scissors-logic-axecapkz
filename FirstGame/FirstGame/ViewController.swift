//
//  ViewController.swift
//  FirstGame
//
//  Created by Azamat Kenjebayev on 12/3/21.
//

import UIKit

enum selectWeapon: String {
    case Rock = "Rock"
    case Scissors = "Scissors"
    case Paper = "Paper"
}

enum gameStatus: String {
    case Won = "You won!"
    case Lost = "You lost!"
    case Draw = "It's a draw!"
}

class ViewController: UIViewController {
    @IBAction func rockPressed(_ sender: UIButton) {
        let userWeapon = [#imageLiteral(resourceName: "paper"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "rock")]
        imageUser.image = userWeapon[2]
        gameStatus.text = "You chose Rock."
        
    }
    @IBAction func scissorsPressed(_ sender: UIButton) {
        let userWeapon = [#imageLiteral(resourceName: "paper"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "rock")]
        imageUser.image = userWeapon[1]
        gameStatus.text = "You chose Scissors."
    }
    @IBAction func paperPressed(_ sender: UIButton) {
        let userWeapon = [#imageLiteral(resourceName: "paper"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "rock")]
        imageUser.image = userWeapon[0]
        gameStatus.text = "You chose Paper."
        
    }
    
    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var imageBot: UIImageView!
    
    @IBOutlet weak var userScore: UILabel!
    @IBOutlet weak var botScore: UILabel!
    @IBOutlet weak var gameStatus: UILabel!
    
    
    @IBAction func playPressed(_ sender: UIButton) {
        botGuess()
        checkWinner()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameStatus.text = "Hello, please choose your weapon!"
        // Do any additional setup after loading the view.
        
        
    }
    
    func botGuess(){
        let botWeapon = [#imageLiteral(resourceName: "paper"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "rock")]
        imageBot.image = botWeapon.randomElement()
    }
    
    
    //        func checkWinner(){
    //            if imageUser.tag == 1 && imageBot.image == #imageLiteral(resourceName: "rock"){
    //                gameStatus.text = "Draw."
    //            } else if imageUser.tag == 2 && imageBot.image == #imageLiteral(resourceName: "paper"){
    //                gameStatus.text = "You won."
    //            } else if imageUser.tag == 3 && imageBot.image == #imageLiteral(resourceName: "rock"){
    //                gameStatus.text = "You won."
    //            } else if imageUser.tag == 1 && imageBot.image == #imageLiteral(resourceName: "scissors"){
    //                gameStatus.text = "You won."
    //            } else if imageUser.tag == 1 && imageBot.image == #imageLiteral(resourceName: "paper"){
    //                gameStatus.text = "You lost."
    //            } else if imageUser.tag == 2 && imageBot.image == #imageLiteral(resourceName: "rock"){
    //                gameStatus.text = "You lost."
    //            } else if imageUser.tag == 3 && imageBot.image == #imageLiteral(resourceName: "scissors"){
    //                gameStatus.text = "You lost."
    //            } else if imageUser.tag == 2 && imageBot.image == #imageLiteral(resourceName: "scissors"){
    //                gameStatus.text = "Draw."
    //            } else if imageUser.tag == 3 && imageBot.image == #imageLiteral(resourceName: "paper"){
    //                gameStatus.text = "Draw."
    //
    //        }
    //
    //        }
    
    func checkWinner(){
        if imageUser.tag == 1 && imageBot.image == #imageLiteral(resourceName: "rock"){
            gameStatus.text = "Draw."
        } else if imageUser.tag == 2 && imageBot.image == #imageLiteral(resourceName: "paper"){
            gameStatus.text = "You won."
        } else if imageUser.tag == 3 && imageBot.image == #imageLiteral(resourceName: "rock"){
            gameStatus.text = "You won."
        } else if imageUser.tag == 1 && imageBot.image == #imageLiteral(resourceName: "scissors"){
            gameStatus.text = "You won."
        } else if imageUser.tag == 1 && imageBot.image == #imageLiteral(resourceName: "paper"){
            gameStatus.text = "You lost."
        } else if imageUser.tag == 2 && imageBot.image == #imageLiteral(resourceName: "rock"){
            gameStatus.text = "You lost."
        } else if imageUser.tag == 3 && imageBot.image == #imageLiteral(resourceName: "scissors"){
            gameStatus.text = "You lost."
        } else if imageUser.tag == 2 && imageBot.image == #imageLiteral(resourceName: "scissors"){
            gameStatus.text = "Draw."
        } else if imageUser.tag == 3 && imageBot.image == #imageLiteral(resourceName: "paper"){
            gameStatus.text = "Draw."
            
        }
        
    }
    
}
