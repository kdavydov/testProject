//
//  Table.swift
//  testProject
//
//  Created by Mikhail on 25.10.16.
//  Copyright © 2016 Mikhail. All rights reserved.
//

import Foundation

class Table {
 
    var trumpCard: Card?
    var cards: [Card] = []
    var currentPlayer: Int = 0
    var currentAction: Action = .attack
    
    func putOnTable(card: Card) {
        cards.append(card)
    }
    

    
}

enum Action {
    case attack
    case defend
}
