//
//  Card.swift
//  testProject
//
//  Created by Mikhail on 21.10.16.
//  Copyright © 2016 Mikhail. All rights reserved.
//

import Foundation

enum cardRank: Int {
    case Six = 0
    case Seven = 1
    case Eight = 2
    case Nine = 3
    case Ten = 4
    case Jack = 5
    case Queen = 6
    case King = 7
    case Ace = 8
}

enum cardSuit: Int {
    case Hearts = 0
    case Diamonds = 1
    case Clubs = 2
    case Spades = 3
}

class Card {
    
    let rank: cardRank
    let suit: cardSuit
    
    public init(rank: cardRank, suit: cardSuit) {
        self.rank = rank
        self.suit = suit
    }
}
