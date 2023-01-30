//
//  ContentView.swift
//  FirstApp
//
//  Created by Kiyong Kim on 2023/01/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Circle()
                .frame(width: 100)
                .foregroundColor(.green)
            Button {
                print("Pressed")
            } label: {
                Text("This is a button")
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
