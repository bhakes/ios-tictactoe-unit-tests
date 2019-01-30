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
    
    // set board coordinate tests for
    // diagonal TicTacToe
    let test00 = board[(0,0)] == player,
        test11 = board[(1,1)] == player,
        test22 = board[(2,2)] == player,
        test02 = board[(0,2)] == player,
        test20 = board[(2,0)] == player
    
    
    if test11 && ((test00 && test22) || (test20 && test02)){
        return true
    }
    
    
    return false
}
