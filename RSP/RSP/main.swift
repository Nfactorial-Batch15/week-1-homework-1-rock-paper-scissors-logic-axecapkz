//
//  main.swift
//  RSP
//
//  Created by Azamat Kenjebayev on 11/30/21.
//

import Foundation

enum selectWeapon{
    case Rock
    case Scissors
    case Paper
    
}

enum gameStatus {
    case Won
    case Lose
    case Draw
}


print("Please choose your weapon: Rock, Scissor or Paper.")


func checkWinner(userPlay: selectWeapon, computerPlay: selectWeapon) -> gameStatus {
    
    if userPlay == computerPlay {
        return .Draw
    }
    
    if userPlay == .Rock && computerPlay == .Scissors {
        return .Lose
    } else if userPlay == .Rock && computerPlay == .Paper {
        return .Won
    }  else if userPlay == .Paper && computerPlay == .Rock {
        return .Lose
    } else if userPlay == .Paper && computerPlay == .Scissors {
        return .Won
    } else if userPlay == .Scissors && computerPlay == .Rock {
        return .Won
    } else if userPlay == .Scissors && computerPlay == .Paper {
        return .Lose
    } else {
        return .Draw
    }
}

var userChoice = readLine()
var userGuess = userChoice
print("Your chose \(userGuess!)")


let guessess:[selectWeapon] = [.Rock, .Scissors, .Paper]

func generateComputerGuess() -> selectWeapon {
    return guessess.randomElement()!
}
print("Computer chose \(generateComputerGuess())")


// didn't finish :(

