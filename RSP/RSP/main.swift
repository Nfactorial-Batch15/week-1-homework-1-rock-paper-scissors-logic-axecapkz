//
//  main.swift
//  RSP
//
//  Created by Azamat Kenjebayev on 12/2/21.
//

import Foundation

gameIntro()
playGame()
var userChoice = readLine()
let botGuess = ["Rock", "Scissors", "Paper"]
var botChoice = botGuess.randomElement()
checkWinner()
playGame()
userChoice = readLine()
botChoice = botGuess.randomElement()
checkWinner()
playGame()
userChoice = readLine()
botChoice = botGuess.randomElement()
checkWinner()

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

func gameIntro(){
    print("Hello, please choose your weapon!")
}



// var userChoice = readLine()
func userWeapon(){
    print(userChoice)
}

//let botGuess = ["Rock", "Scissors", "Paper"]
//var botChoice = botGuess.randomElement()

func botWeapon(){
    print(botChoice)
}

func checkWinner(){
    switch botChoice {
    case "Rock":
        print("Bot chose Rock.")
        if userChoice == "Rock" {
            print(gameStatus.Draw.rawValue)
        } else if userChoice == "Paper" {
            print(gameStatus.Won.rawValue)
        } else {
            print(gameStatus.Lost.rawValue)
        }
        
    case "Scissors":
        print("Bot chose Scissors.")
        if userChoice == "Scissors" {
            print(gameStatus.Draw.rawValue)
        } else if userChoice == "Rock" {
            print(gameStatus.Won.rawValue)
        } else {
            print(gameStatus.Lost.rawValue)
        }
    case "Paper":
        print("Bot chose Paper.")
        if userChoice == "Paper" {
            print(gameStatus.Draw.rawValue)
        } else if userChoice == "Scissors" {
            print(gameStatus.Won.rawValue)
        } else {
            print(gameStatus.Lost.rawValue)
        }
    default:
        print("Something gone wrong.")
    }
}
var i = 1
func playGame(){
    print("Round \(i + 1). Chose your weapon: Rock, Scissors or Paper.")
    i += 1
}

