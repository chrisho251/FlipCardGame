//
//  FlashScreen.swift
//  FlipCardGame
//
//  Created by Hoang, Ho Duy on 18/08/2022.
//

import SwiftUI

struct FlashScreen: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State var twoColor = false
    var body: some View {
        if isActive {
            ContentView()
        } else {
                    ZStack {
                        Color(UIColor(twoColor ? Color.blue : Color.yellow))
                            .animation(Animation.easeInOut(duration: 1)
                            .repeatForever(autoreverses: true))
                            .onAppear()
                            {
                                self.twoColor.toggle()
                            }
                            .edgesIgnoringSafeArea(.all)
                        VStack {
                            animationSequence()
                                .offset(x: 45, y: 200)
                            Text("Flip Card Game")
                                .font(Font.custom("Baskerville-Bold", size:36))
                                .foregroundColor(.black.opacity(0.8))
                                .offset(x: 10, y: -260)

                        }
                        
                    }
        
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0)
                {
                withAnimation{self.isActive=true}
                }
            }
        }
    }
}

struct FlashScreen_Previews: PreviewProvider {
    static var previews: some View {
        FlashScreen()
    }
}


var images : [UIImage]! = [
    UIImage(named: "image0")!,
    UIImage(named: "image1")!,
    UIImage(named: "image2")!,
    UIImage(named: "image3")!,
    UIImage(named: "image4")!,
    UIImage(named: "image5")!,
    UIImage(named: "image6")!,
    UIImage(named: "image7")!,
    UIImage(named: "image8")!,
    UIImage(named: "image9")!,
    UIImage(named: "image10")!,
    UIImage(named: "image11")!,
    UIImage(named: "image12")!,
    UIImage(named: "image13")!,
    UIImage(named: "image14")!
]

let animatedImages = UIImage.animatedImage(with: images, duration: 1.0)


struct animationSequence : UIViewRepresentable{
    
    
    func makeUIView(context: Context) -> UIView {
        
        let seqAnimview = UIView(frame: CGRect(x: 0, y: 0, width: 350, height: 350))
        let seqImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 350, height: 350))
        seqImage.clipsToBounds = true
        seqImage.layer.cornerRadius = 20
        seqImage.autoresizesSubviews = true
        seqImage.contentMode = UIView.ContentMode.scaleAspectFit
        seqImage.image = animatedImages
        seqAnimview.addSubview(seqImage)
        return seqAnimview
        
        
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<animationSequence>) {
        
    }
}
