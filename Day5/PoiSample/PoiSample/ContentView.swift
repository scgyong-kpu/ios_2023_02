//
//  ContentView.swift
//  PoiSample
//
//  Created by Kiyong Kim on 2023/02/03.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var poiData = PoiDataStore.get()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .onAppear {
            poiData.startLoading()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
