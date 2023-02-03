//
//  ContentView.swift
//  AlbumSample
//
//  Created by Kiyong Kim on 2023/02/03.
//

import SwiftUI

struct AlbumListView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView()
    }
}
