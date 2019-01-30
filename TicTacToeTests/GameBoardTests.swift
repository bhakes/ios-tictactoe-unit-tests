//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Benjamin Hakes on 1/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameBoardTests: XCTestCase {

    // things won't work if you don't
    // start your test method with test
    
    // Shift + command + U
    func testCreatingEmptyBoard() {
        let board = GameBoard()
        
        
        XCTAssertFalse(board.isFull)
        for x in 0..<3{
            for y in 0..<3 {
                
                XCTAssertNil(board[(x, y)])
            
            }
        }
    }
    
    func testPlacingMarks(){
        var board = GameBoard()
        
        for x in 0..<3{
            for y in 0..<3 {
                XCTAssertNoThrow(try board.place(mark: .o, on: (x, y)))
                XCTAssertEqual(.o, board[(x, y)])
            }
        }
        
        // make sure you can't change an already marked square
        XCTAssertThrowsError(try board.place(mark: .o, on: (0, 0))) { error in
            
            XCTAssertEqual(error as? GameBoardError, .invalidSquare)
            
        }

    }
    
    func testFillingBoard() {
        
        var board = GameBoard()
        
        for x in 0..<3{
            for y in 0..<3 {
                XCTAssertFalse(board.isFull)
                XCTAssertNoThrow(try! board.place(mark: .x, on: (x, y)))
                
            }
        }
        XCTAssertTrue(board.isFull)
        
    }
    
    
}
