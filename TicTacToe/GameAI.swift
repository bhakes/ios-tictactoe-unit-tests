//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {    
    
    // check verticals
    var yNumOfMarks: [Int] = []
    for x in 0..<3 {
        var numMarks = 0
        for y in 0..<3 {
            if board[(x, y)] == player {
                numMarks += 1
            }
        }
        
        yNumOfMarks.append(numMarks)
        if numMarks == 3 {
            return true
        }
    }
    
    // check horizontals
    var xNumOfMarks: [Int] = []
    for y in 0..<3 {
        var numMarks = 0
        for x in 0..<3 {
            if board[(x, y)] == player {
                numMarks += 1
            }
        }
        xNumOfMarks.append(numMarks)
        if numMarks == 3 {
            return true
        }
    }
    
    return false
}
