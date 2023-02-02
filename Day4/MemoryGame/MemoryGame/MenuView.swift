//
//  MenuView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/02/02.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    GameView()
                } label: {
                    Text("Game")
                }
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
