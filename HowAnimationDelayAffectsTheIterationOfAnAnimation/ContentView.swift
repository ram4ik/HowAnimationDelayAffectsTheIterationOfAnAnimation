//
//  ContentView.swift
//  HowAnimationDelayAffectsTheIterationOfAnAnimation
//
//  Created by Ramill Ibragimov on 02.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var moveUp = false
    
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            Text("Slide up to open")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .offset(y: moveUp ? 400 : 450)
            .animation(Animation
                .easeOut(duration: 2)
                .delay(2)
                .repeatCount(50, autoreverses: false)
            )
                .onAppear() {
                    self.moveUp.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
