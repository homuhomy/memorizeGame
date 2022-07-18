//
//  MemorizeLatestApp.swift
//  MemorizeLatest
//
//  Created by Nur Anati Nabilah on 07/07/2022.
//

import SwiftUI

@main
struct MemorizeLatestApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
