//
//  ContentView.swift
//  MoreControls
//
//  Created by Kiyong Kim on 2023/01/31.
//

import SwiftUI

struct ContentView: View {
    @State var rotationDegrees = 0.0
    @State var large = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Image(systemName: "arrow.right.circle")
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .frame(width: large ? 200 : 100, height: 200)
                .foregroundColor(.yellow)
                .rotationEffect(.degrees(rotationDegrees * 360))
                .shadow(color:.red, radius: 10, x: 10, y: 10)
            Slider(value: $rotationDegrees)
                .padding()
            Toggle(isOn: $large) {
                Text("Shows Large Circle")
            }
            .padding()
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
