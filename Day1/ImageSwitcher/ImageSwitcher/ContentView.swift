//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2023/01/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.left.circle")
                    .resizable()
                    .frame(width: 64, height: 64)
                Spacer()
                Text("1 / 5")
                Spacer()
                Image(systemName: "arrow.right.circle")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            Spacer()
            Image("cat_1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
