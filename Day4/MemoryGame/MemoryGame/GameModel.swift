//
//  GameModel.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/02/02.
//

import Foundation

struct Card {
    enum State {
        case open, closed, removed
    }
    let number: Int
    var state = State.open
}

struct GameModel {
    static let cols = 3
    static let rows = 4
    
    var cards = [Card]()
//    var cards: [Card] = []
    
    init() {
        let max = Self.cols * Self.rows / 2
        for number in 1...max {
            cards.append(Card(number: number, state: .open))
            cards.append(Card(number: number, state: .closed))
        }
    }
}
