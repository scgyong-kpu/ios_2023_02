//
//  ContentView.swift
//  Flags
//
//  Created by Kiyong Kim on 2023/01/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(Region.all, id: \.title) { region in
                Section(region.title) {
                    ForEach(region.countries, id: \.name) { country in
                        HStack {
                            Image(country.file)
                            Text(country.name)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
