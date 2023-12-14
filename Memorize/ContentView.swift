//
//  ContentView.swift
//  Memorize
//
//  Created by Athibet Prawane on 9/12/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false

    var body: some View {
        ZStack {
            var base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base
            }
        }
    }
}

#Preview {
    ContentView()
}
