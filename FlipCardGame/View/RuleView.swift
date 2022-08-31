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
        .padding(.bottom, 35)    }
}

struct RuleView_Previews: PreviewProvider {
    static var previews: some View {
        RuleView()
    }
}
