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
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Spacer()
            Text("Hello, world!")
            Spacer()
            Image("cat1")
                .resizable()
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
