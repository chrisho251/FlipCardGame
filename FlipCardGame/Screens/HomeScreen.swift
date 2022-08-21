//
//  HomeScreen.swift
//  FlipCardGame
//
//  Created by Hoang, Ho Duy on 18/08/2022.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
//            GIFView(type: .name("giphy"))
//                .frame( maxWidth: .infinity, maxHeight: .infinity)
            
            
            ZStack {
                Color.white.opacity(0.9)
                    .frame(width: 350, height: 550)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 10)
                    .blur(radius: 0.15)
                
                VStack {
                    Text("Welcome to Memory Game")

                    
                }
            }
//            .frame( maxWidth: .infinity, maxHeight: .infinity)
            .background(GIFView(type: .name("capoo")))
            .ignoresSafeArea()
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
