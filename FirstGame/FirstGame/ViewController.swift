//
//  ViewController.swift
//  FirstGame
//
//  Created by Azamat Kenjebayev on 12/3/21.
//

import UIKit

var userPoints = 0
var botPoints = 0

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
        let botChoice = Int.random(in: 1...3)
        let userNum = Int.random(in: 1...3)
        setWeapon(imageView: imageBot, imageNum: botChoice)
        setWeapon(imageView: imageUser, imageNum: userNum)
        // 1 - Rock, 2 - Scissors, 3 - Paper
        
        if userNum == 1 && botChoice == 1 {
            let userWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageUser.image = userWeapon[0]
            let botWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageBot.image = botWeapon[0]
            gameStatus.text = "Draw."
        }
        if userNum == 2 && botChoice == 2 {
            let userWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageUser.image = userWeapon[1]
            let botWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageBot.image = botWeapon[1]
            gameStatus.text = "Draw."
        }
        if userNum == 3 && botChoice == 3 {
            let userWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageUser.image = userWeapon[2]
            let botWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageBot.image = botWeapon[2]
            gameStatus.text = "Draw."
        }
        if userNum == 1 && botChoice == 2 {
            userPoints = userPoints + 1
            let userWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageUser.image = userWeapon[0]
            let botWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageBot.image = botWeapon[1]
            gameStatus.text = "You won!"
        }
        if userNum == 2 && botChoice == 3 {
            userPoints = userPoints + 1
            let userWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageUser.image = userWeapon[1]
            let botWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageBot.image = botWeapon[2]
            gameStatus.text = "You won!"
        }
        if userNum == 3 && botChoice == 1 {
            userPoints = userPoints + 1
            let userWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageUser.image = userWeapon[2]
            let botWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageBot.image = botWeapon[0]
            gameStatus.text = "You won!"
        }
        if userNum == 1 && botChoice == 3 {
            botPoints = botPoints + 1
            let userWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageUser.image = userWeapon[0]
            let botWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageBot.image = botWeapon[2]
            gameStatus.text = "You lost!"
        }
        if userNum == 2 && botChoice == 1 {
            botPoints = botPoints + 1
            let userWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageUser.image = userWeapon[1]
            let botWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageBot.image = botWeapon[0]
            gameStatus.text = "You lost!"
        }
        if userNum == 3 && botChoice == 2 {
            botPoints = botPoints + 1
            let userWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageUser.image = userWeapon[2]
            let botWeapon = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
            imageBot.image = botWeapon[1]
            gameStatus.text = "You lost!"
        }
        userScore.text = "\(userPoints)"
        botScore.text = "\(botPoints)"
            
            if userPoints == 3 && botPoints == 2 || userPoints == 3 && botPoints == 1 || userPoints == 3 && botPoints == 0 {
                gameStatus.text = "You won!"
            }
            if botPoints == 3 && userPoints == 2 || botPoints == 3 && userPoints == 1 || userPoints == 3 && botPoints == 0 {
                gameStatus.text = "You lost!"
            }
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
    
    func setWeapon(imageView: UIImageView, imageNum: Int){
        switch imageNum {
        case 1:
            imageView.image = UIImage(named: "Rock")
        case 2:
            imageView.image = UIImage(named: "Scissors")
        case 3:
            imageView.image = UIImage(named: "Paper")
        default:
            print("Error")
        }
    }
    
}

