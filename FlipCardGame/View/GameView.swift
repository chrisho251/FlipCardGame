//
//  GameView.swift
//  FlipCardGame
//
//  Created by Hoang, Ho Duy on 21/08/2022.
//

import SwiftUI

struct GameView: View {
    
    private var fourColumnGrid = [GridItem(.flexible()), GridItem(.flexible()),
                                  GridItem(.flexible()), GridItem(.flexible())]
    
    private var sixColumnGrid = [GridItem(.flexible()), GridItem(.flexible()),
                                 GridItem(.flexible()), GridItem(.flexible()),
                                 GridItem(.flexible()), GridItem(.flexible())]
    
    @State var cards = createCardList().shuffled()
    @State var MatchedCards = [Card]()
    @State var UserChoices = [Card]()
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Memory Game")
                    .font(.largeTitle)
                
                LazyVGrid(columns: fourColumnGrid, spacing: 10) {
                    ForEach(cards){card in
                        CardView(card:card,
                                 width: Int(geo.size.width/4-10),
                                 MatchedCards:  $MatchedCards,
                                 UserChoices: $UserChoices
                        )
                    }
                }
                VStack {
                    Text ("Match thest cards to win")
                    LazyVGrid(columns:sixColumnGrid, spacing: 5){
                        ForEach(cardValues, id:\.self){cardValue in
                            if !MatchedCards.contains(where: {$0.text == cardValue}) {
                                Text(cardValue)
                                    .font(.system(size: 40))

                            }
                        }
                    }
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
