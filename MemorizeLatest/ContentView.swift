//
//  ContentView.swift
//  MemorizeLatest
//
//  Created by Nur Anati Nabilah on 07/07/2022.
//

import SwiftUI

struct ContentView: View { //view = just the way the rectangle on screen
    //usually var s: String
//    @State var animalEmojis = ["🐱","🐶","🐯","🐹","🦊",
//                  "🐻‍❄️","🐭","🐻","🐷","🐼",
//                  "🐨","🐮","🦁","🐵","🙈","🐽","🐧","🐥","🦋","🦄","🐲","🐙", "🐳","🦭","🐝"]
//
//
//    @State var foodEmojis = ["🍔", "🥐", "🥯", "🍞", "🍳", "🌭", "🥞", "🧇", "🍖", "🍕", "🥘", "🍣",
//    "🥮", "🍛", "🍦", "🥠"]
    
    let viewModel: EmojiMemoryGame
    
    var body: some View //type of sth behave like a view
    {
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    //a bag of lego maker
                    //we need to tell them just use the string in the array as identifier as make it as unique
                    ForEach(viewModel.cards) { card in
                        cardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                        }
                    }
                }
            .foregroundColor(.red)
        .padding(.horizontal)
    }
}

//    var animalTheme: some View{
//        Button(action:{
//            animalEmojis.shuffle()
//        }, label: {
//            VStack{
//                Image(systemName: "pawprint.circle.fill")
//                Text("animals")
//                    .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
//            }
//        })
//    }
    
//    var vehicleTheme: some View{
//        Button(action:{
//            vehiclesEmojis.shuffle()
//        }, label: {
//            VStack{
//                Image(systemName: "car.circle.fill")
//                Text("vehicles")
//                    .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
//            }
//
//        })
//    }
    
//    var foodTheme: some View{
//        Button(action:{
//            foodEmojis.shuffle()
//        }, label: {
//            VStack{
//                Image(systemName: "heart.circle.fill")
//                Text("foods")
//                    .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
//            }
//        })
//    }
    
    
    
//    var remove: some View{
//        Button{
//            if emojiCount > 1{
//                emojiCount-=1
//            }
//        } label: {
//            VStack{
//                Image(systemName: "minus.circle")
//                Text("remove")
//                    .font(.subheadline)
//            }
//
//        }
//    }
    
//    var add: some View{
//        Button(action: {
//            if emojiCount < vehiclesEmojis.count {
//                emojiCount+=1
//            }
//        }, label: {
//            VStack{
//                Image(systemName: "plus.circle")
//                Text("add")
//                    .font(.subheadline)
//            }
//        })
//    }
//}

struct cardView: View{
    let card: MemoryGame<String>.Card
    
    var body: some View{ //face up
        ZStack{ //think of it as a bag of lego //stack of all the items in this function
            //below is a function that's an argument to ZStack
            //viewBuilder = list other view in here in a bag?? and then return it
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if card.isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 4.0)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            let game = EmojiMemoryGame()
            
            ContentView(viewModel: game)
                .preferredColorScheme(.dark)
                .previewInterfaceOrientation(.portrait)
            ContentView(viewModel: game)
                .preferredColorScheme(.light)
            ContentView(viewModel: game)
                .previewDevice("iPhone 12 Pro Max")
                .previewDisplayName("iPhone 12 Pro Max")
        }
    }

}
