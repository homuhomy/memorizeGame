//
//  MemoryGame.swift
//  MemorizeLatest
//  MODEL //same like constructor???
//  Created by Nur Anati Nabilah on 11/07/2022.
//

import Foundation

struct MemoryGame<CardContent>{
    private (set) var cards: Array<Card>
    
    func choose(_ card: Card){ //_ means unnamed parameter/label
        
    }
    
    init (numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent){ //check lecture 3 1:17:00
        cards = Array<Card>()
        //add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable{
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent //use dont care because we dont know if we might use image or emoji
        
        var id: Int
    }
}
