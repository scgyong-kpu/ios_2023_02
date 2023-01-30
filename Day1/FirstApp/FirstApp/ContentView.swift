//
//  ContentView.swift
//  FirstApp
//
//  Created by Kiyong Kim on 2023/01/30.
//

import SwiftUI

struct ImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.red)
            .padding()
            .background(Color.yellow)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .modifier(ImageModifier())
            Image(systemName: "trash.circle")
                .modifier(ImageModifier())
            Circle()
                .frame(width: 100)
                .foregroundColor(.green)
            Button {
                print("Pressed")
            } label: {
                ZStack {
                    Capsule()
                        .stroke(lineWidth: 5)
                    Text("This is a button")
                }
                .frame(width:200, height: 60)
            }

            Text("Hello, tukorea!")
                .font(.largeTitle)
                .foregroundColor(.purple)
            HStack {
                Image(systemName: "folder.badge.plus")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                Text("Wow")
            }
            .padding()
            .background(Color.yellow)
            .padding()
            .background(Color.orange)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
