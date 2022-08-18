//
//  OnBoardingScreen.swift
//  FlipCardGame
//
//  Created by Hoang, Ho Duy on 18/08/2022.
//

import SwiftUI

struct OnBoardingScreen: View {
    
    var body: some View {
        
        NavigationView {

            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                ZStack {
                    PokemonView().offset(x: 0, y: -95)
                    
                    RoundedRectangle(cornerRadius: 75)
                        .frame(width: 450, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.gray).opacity(0.2)
                        .offset(x: 0, y: 350)
                        
                    VStack {
                        Text("GET STARTED")
                            .font(.title)
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            
                            NavigationLink (
                                destination: HomeScreen(),
                                label: {
                                    ZStack {
                                        Circle()
                                            .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(.clear)
                                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                        Image(systemName: "arrow.right")
                                            .resizable()
                                            .frame(width: 35, height: 30, alignment: .center)
                                            .foregroundColor(.white)
                                    }
                                }
                            )
                        }
                        .offset(x: 0, y: 300)
                }
            }
        }
    }
}

struct OnBoardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreen()
    }
}


struct PokemonView: View {
    
    @State var tail = false
    @State var shockOne = false
    @State var shockTwo = false
    @State var visibilityOpacity = false
    @State var isAnimating = false

    var body: some View {
        
        ZStack{
            
            Text("The Memory Game")
                .font(.title2)
                .fontWeight(.thin)
                .foregroundColor(Color.yellow)
                .offset(x: 0, y: -220)
            
            ZStack {
                
                Image("p3")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: .center)
                    .shadow(color: .yellow, radius: 0.5, x: 0.0, y: 0.0)
                    .rotationEffect(.degrees(9))
                    .offset(x: 80, y: 0)
                    .rotationEffect(.degrees(tail ? 0 : 35))
                    .animation(Animation.easeInOut(duration: 1).delay(5).repeatForever(autoreverses: true),value: tail)
                    .onAppear(){
                        
                            self.tail.toggle()
                        }
                
                Image("p1")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                    .shadow(color: .yellow, radius: 0.5, x: 0.0, y: 0.0)
                
                Image("p2")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                    .shadow(color: .yellow, radius: 0.5, x: 0.0, y: 0.0)
                    .opacity(visibilityOpacity ? 1 : 0)
                    .animation(Animation.easeInOut(duration: 0.2).delay(2).repeatForever(autoreverses: true), value: visibilityOpacity)
                    .onAppear(){
                            self.visibilityOpacity.toggle()
                        }
                
                Image("shock1")
                    .resizable()
                    .frame(width: 350, height: 350)
                    .shadow(color: .yellow, radius: 2, x: 0.0, y: 0.0)
                    .opacity(shockOne ? 1 : 0)
                    .clipShape(Circle().offset(x: shockOne ? 0 : 125))
                    .animation(Animation.interpolatingSpring(
                                stiffness: 30, damping: 10).speed(5).repeatForever(autoreverses: true).delay(1), value: shockOne)
                    .onAppear() {
                        self.shockOne.toggle()
                      }
                
                Image("shock2")
                    .resizable()
                    .frame(width: 350, height: 350)
                    .shadow(color: .yellow, radius: 2, x: 0.0, y: 0.0)
                    .opacity(shockTwo ? 1 : 0)
                    .clipShape(Circle().offset(x: shockTwo ? 0 : -125))
                    .animation(Animation.interpolatingSpring(
                            stiffness: 30, damping: 10).speed(5).repeatForever(autoreverses: true).delay(1), value: shockTwo)
                    .onAppear() {
                        self.shockTwo.toggle()
                      }
            }
        }
    }
}
