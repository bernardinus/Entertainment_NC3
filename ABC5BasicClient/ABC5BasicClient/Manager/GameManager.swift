//
//  GameManager.swift
//  ABC5BasicClient
//
//  Created by Bernardinus on 15/06/20.
//  Copyright © 2020 ADA. All rights reserved.
//

import Foundation

class GameManager
{
    static let shared:GameManager = GameManager()
    
    
    var sessionTime:Double = 0
    var selectedTheme:Theme = .None
    var selectedLetter:String = ""
    var numberOfPlayer:Int = 0
    var players:[String] = []
    
    var availableAnswer:[String] = []
    var answeredAnswer:[String] = []
    var scoreData:[String:Int] = [:]
    var playersTurn:[String] = []
        
    var currentPlayer:String = ""
    var currentScore:Int = 0
    var roundsCount = 0
    var currentRounds = 0

    private init()
    {
        
    }
    
    func setupGame(sessionTime:Double, theme:Theme, numberOfPlayer:Int)
    {
        self.sessionTime = sessionTime
        self.selectedTheme = theme
        self.numberOfPlayer = numberOfPlayer
    }
    
    //MARK: Single Device
    
    func initializeSingleDeviceGame(players:[String])
    {
        roundsCount = 3
        self.players = players
        
        availableAnswer = getAvailableAnswer()
        
        // initalizeScore
        scoreData.removeAll()
        for i in 0..<players.count
        {
            let player = players[i]
            scoreData[player] = 0
        }
        
        startNewRounds()
        
        startGame()
    }
    
    
    func startGame()
    {
        nextPlayer()
    }
    
    func startNewRounds()
    {
        playersTurn = players.shuffled()
    }
    
    func nextPlayer()
    {
        currentPlayer = playersTurn.first!
        currentScore = scoreData[currentPlayer]!
    }
    
    func checkAnswer(answer:String, timeleft:Double) -> Bool
    {
        if availableAnswer.contains(answer)
        {
            answeredAnswer.append(answer)
            availableAnswer.remove(at:availableAnswer.firstIndex(of: answer)!)
            let score = Int(ceil(timeleft/sessionTime * 100))
            currentScore += score
            scoreData[currentPlayer] = currentScore
            
            return true
        }
        return false
    }
    
    func getAvailableAnswer()->[String]
    {
        switch selectedTheme {
        case .Fruits:
            selectedLetter = fruitAnswer.keys.randomElement()!
            return fruitAnswer[selectedLetter]!
        case .Animal:
            selectedLetter = animalAnswer.keys.randomElement()!
            return animalAnswer[selectedLetter]!
        case .None:
            return []
        }
    }
    
    
    
    
    //MARK: Multi Device
    
    func initializeMultiDeviceGame()
    {
        
    }
    
}
