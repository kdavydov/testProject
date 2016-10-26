//
//  Deck.swift
//  testProject
//
//  Created by Mikhail on 21.10.16.
//  Copyright © 2016 Mikhail. All rights reserved.
//

import Foundation

class Deck {
    
    private var cards: [Card] = []
    
    init() {
        refresh()
    }
    
    public func refresh() {
        for suit in 0...3 {
            for rank in 0...8 {
                let card = Card(rank: cardRank(rawValue: rank)!, suit: cardSuit(rawValue: suit)!)
                cards.append(card)
            }
        }
        
        shuffle()
    }
    
    public func shuffle() {
        for i in 0...10000 {
            let src = Int(arc4random_uniform(36))
            let dst = Int(arc4random_uniform(36))
            
            if src == dst {
                continue
            }
            
            let tmpCard = cards[src]
            cards[src] = cards[dst]
            cards[dst] = tmpCard
        }
    }
    
    func getCardsCount() -> Int {
        return cards.count
    }
    
    func canDraw() -> Bool {
        if cards.count > 0 {
            return true
        }
        return false
    }
    
    func drawTopCard() -> Card? {
        if let firstCard = cards.first {
            cards.removeFirst()
            return firstCard
        }
        return nil
    }
    
}
