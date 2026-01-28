//
//  GameViewModel.swift
//  Challenge 4 - PuzzleDash
//
//  Created by Michael Williams on 1/27/26.
//

import SwiftUI

class GameViewModel: ObservableObject {
    @Published var matches: Int = 0
    @Published var mistakes: Int = 0
    @Published var timeRemaining: Int = 20
    @Published var gameState: GameState = .start
    
    enum GameState {
        case start, playing, paused, won, lost, saving
    }

    func checkMatch(isCorrect: Bool) {
        if isCorrect {
            matches += 1
            if matches >= 20 { gameState = .won }
        } else {
            mistakes += 1
            if mistakes >= 3 { gameState = .lost }
        }
    }
    
    func resetGame() {
        matches = 0
        mistakes = 0
        timeRemaining = 20
        gameState = .playing
    }
}
