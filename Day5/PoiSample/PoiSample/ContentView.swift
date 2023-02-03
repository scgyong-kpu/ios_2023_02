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
                        PoiItemView(item: item)
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

struct PoiItemView: View {
    let item: PoiItem
    var body: some View {
        NavigationLink {
            Text(item.RESTRT_NM)
        } label: {
            Text(item.RESTRT_NM)
        }
    }
}
