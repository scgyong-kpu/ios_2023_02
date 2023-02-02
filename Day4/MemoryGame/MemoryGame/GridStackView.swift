//
//  GridStackView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/02/02.
//

import SwiftUI

struct GridStackView: View {
    let cols: Int
    let rows: Int
    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< cols, id: \.self) { col in
                        Image(systemName: "globe")
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

struct GridStackView_Previews: PreviewProvider {
    static var previews: some View {
        GridStackView(cols: 3, rows: 4)
    }
}
