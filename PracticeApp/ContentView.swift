//
//  ContentView.swift
//  PracticeApp
//
//  Created by DK on 2023-08-29.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    
    
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    
    var isFaceUp: Bool = false
    
    var body: some View {
        if isFaceUp {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
                
            }
            .foregroundColor(.orange)
        } else {
            RoundedRectangle(cornerRadius: 12)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
