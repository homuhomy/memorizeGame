//
//  EmojiMemoryGame.swift
//  MemorizeLatest
//  ViewModel
//  Created by Nur Anati Nabilah on 11/07/2022.
//

import SwiftUI

class EmojiMemoryGame{
    static let vehiclesEmojis = ["🚐","🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒","🚄","🚂","🛴","🚜","🏍","✈️","🚆","🚘","🚔","🚛","🦼"]
    
    static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            vehiclesEmojis [pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
}


