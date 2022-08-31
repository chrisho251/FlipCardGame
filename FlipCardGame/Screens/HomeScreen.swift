

import SwiftUI

struct HomeScreen: View {
    
    @State var selection: Int? = nil
    
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
                        .offset(y: -100)
                        .font(.system(size: 20, weight: .heavy, design: .rounded))
                        .foregroundColor(.black)
                    NavigationLink(destination: GameView(), tag: 1, selection: $selection) {
                        Button(action: {
                            
                            self.selection = 1
                        }) {
                            HStack {
                                Spacer()
                                Text("Play Game")
                                    .font(.system(size: 40, weight: .heavy, design: .rounded))
                                    .foregroundColor(.white)
                                    .padding(.vertical, 20)
                                    .padding(.horizontal, 40)
                                    .background(Color.red.opacity(0.7))
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                Spacer()
                            }
                        }
                    }
                    .offset(y: -50)
                    
                    NavigationLink(destination: GameView(), tag: 2, selection: $selection) {
                        Button(action: {
                            
                            self.selection = 2
                        }) {
                            HStack {
                                Spacer()
                                Text("How to Play")
                                    .font(.system(size: 40, weight: .heavy, design: .rounded))
                                    .foregroundColor(.white)
                                    .padding(.vertical, 20)
                                    .padding(.horizontal, 40)
                                    .background(Color.purple.opacity(0.7))
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                Spacer()
                            }
                        }
                    }
                    .offset(y: -0)
           
                }
                
            }
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
