//
//  main.swift
//  RSP
//
//  Created by Azamat Kenjebayev on 12/2/21.
//

import Foundation

enum selectWeapon: String {
    case Rock = "Rock"
    case Scissors = "Scissors"
    case Paper = "Paper"
}

enum gameStatus: String {
    case Won = "You won!"
    case Lost = "You lost!"
    case Draw = "It's draw!"
}

func gameIntro(){
    print("Hello, please choose your weapon!")
}

let botGuess = ["Rock", "Scissors", "Paper"]
var botChoice = botGuess.randomElement()

var userChoice = readLine()
func userWeapon(){
    print(userChoice!)
}

func botWeapon(){
    print(botChoice!)
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

func playGame(){
    for i in 1...3 {
        print("Round \(i). Chose your weapon: Rock, Scissors or Paper.")
        userWeapon()
        botWeapon()
        checkWinner()
    }
}

gameIntro()
playGame()
