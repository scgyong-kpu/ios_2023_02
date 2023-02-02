//
//  CardView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/02/02.
//

import SwiftUI

struct CardView: View {
    let prefix: String
    let number: Int
    let open: Bool
    var body: some View {
        Image(filename)
    }
    var filename: String {
        if !open {
            return "\(prefix)_back"
        }
        return String(format: "%@_%02d_%02d", prefix, number, 1)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CardView(prefix: "f", number: 1, open: true)
            CardView(prefix: "f", number: 2, open: true)
            CardView(prefix: "f", number: 3, open: true)
            CardView(prefix: "f", number: 4, open: false)
        }
    }
}
