//
//  ModalView.swift
//  FlipCardGame
//
//  Created by Hoang, Ho Duy on 31/08/2022.
//

import SwiftUI

struct ModalView: View {
    
    @Binding var isShowing: Bool
    @State private var curHeight: CGFloat = 400
    let minHeight: CGFloat = 400
    let maxHeight: CGFloat = 700
    var body: some View {
        ZStack(alignment: .bottom) {
            if isShowing {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                
                mainView
                .transition(.move(edge: .bottom))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
    }
    var mainView: some View {
        VStack {
            
            ZStack {
                Capsule()
                    .frame(width: 40, height: 6)
            }
            .frame(height:40)
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.00001))
            
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
        .frame(height: curHeight)
        .frame(maxWidth: .infinity)
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                Rectangle()
                    .frame(height: curHeight / 2)
            }
                .foregroundColor(.white)
        )
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(isShowing: .constant(true))
    }
}
