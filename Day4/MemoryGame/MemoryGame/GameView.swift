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
            GridStackView(cols: 3, rows: 5) { row, col in
                CardView(prefix: "f", number: row+col+1, open: true)
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
