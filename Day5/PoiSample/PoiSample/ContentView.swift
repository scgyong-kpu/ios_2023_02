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
        NavigationView {
            VStack {
                List {
                    ForEach(poiData.items, id: \.RESTRT_NM) { item in
                        NavigationLink {
                            Text(item.RESTRT_NM)
                        } label: {
                            Text(item.RESTRT_NM)
                        }
                    }
                }
            }
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
