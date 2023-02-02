//
//  MenuView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/02/02.
//

import SwiftUI

struct MenuView: View {
    let prefixes = [ "f", "t" ]
    var body: some View {
        NavigationView {
            List {
                ForEach(prefixes, id: \.self) { prefix in
                    NavigationLink {
                        GameView(prefix: prefix)
                    } label: {
                        MenuItemView(prefix: prefix)
                    }
                }
            }
            .navigationTitle("Memory Game")
        }
    }
}

struct MenuItemView: View {
    let prefix: String
    var body: some View {
        Text("Game with prefix \(prefix)")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

