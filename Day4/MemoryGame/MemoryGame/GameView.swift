//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/02/02.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var gameModel = GameModel()
    var body: some View {
        VStack {
            GridStackView(cols: GameModel.cols, rows: GameModel.rows) { row, col in
                CardView(prefix: "f", card: gameModel.card(row: row, col:col))
                    .onTapGesture {
                        gameModel.toggle(row: row, col: col)
                    }
            }
            HStack {
                Button {
                    gameModel.start()
                } label: {
                    Text("Restart")
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
