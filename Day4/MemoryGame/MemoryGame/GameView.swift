//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/02/02.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
