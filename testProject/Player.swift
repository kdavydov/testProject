//
//  Player.swift
//  testProject
//
//  Created by Mikhail on 21.10.16.
//  Copyright © 2016 Mikhail. All rights reserved.
//

import Foundation

class Player {
    
    var name: String
    var hand: [Card] = []
    
    public init(name: String) {
        self.name = name
    }
    
    public func makeTurn(card: Card) {
        

    }
    
    public func takeCard(card: Card) {
        hand.append(card)
    }
    
    func getCardsCount() -> Int {
        return hand.count
    }
    
    func canDraw() -> Bool {
        if hand.count > 0 {
            return true
        }
        return false
    }
    
    func drawTopCard() -> Card? {
        if let firstCard = hand.first {
            hand.removeFirst()
            return firstCard
        }
        return nil
    }

}
