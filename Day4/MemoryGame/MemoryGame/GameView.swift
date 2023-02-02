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
            GridStackView(cols: GameModel.cols, rows: GameModel.rows) { row, col in
                CardView(prefix: "f", card: Card(number: 1))
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
