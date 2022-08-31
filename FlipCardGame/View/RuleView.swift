//
//  RuleView.swift
//  FlipCardGame
//
//  Created by Hoang, Ho Duy on 31/08/2022.
//

import SwiftUI

struct RuleView: View {
    var body: some View {
        ZStack {
            Color.white.opacity(0.9)
                .frame(width: 350, height: 550)
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 10)
                .blur(radius: 0.15)
            
            VStack {
        
                ZStack {
                    VStack {
                        Text("\" Select the card to see the hidden icon below, then find and match with the same card that display randomly in the remaining card.\"")
                            .font(.system(size: 20, weight: .regular))
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.bottom, 10)
                        
                        Text("\" You can find the remaining icon that have not yet matched at the bottom of the screen.\"")
                            .font(.system(size: 20, weight: .regular))
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.bottom, 10)
                    }
                    .padding(.horizontal, 30)
                }
                .frame(maxHeight: .infinity)
                .padding(.bottom, 35)
       
            }
            
        }
        .background(GIFView(type: .name("capoo")))
        .ignoresSafeArea()
}
}
struct RuleView_Previews: PreviewProvider {
    static var previews: some View {
        RuleView()
    }
}
