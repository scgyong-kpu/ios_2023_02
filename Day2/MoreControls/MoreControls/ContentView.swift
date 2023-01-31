//
//  ContentView.swift
//  MoreControls
//
//  Created by Kiyong Kim on 2023/01/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Image(systemName: "arrow.right.circle")
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .foregroundColor(.yellow)
                .shadow(color:.red, radius: 10, x: 10, y: 10)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(colors: [
                .white, .cyan
            ], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
