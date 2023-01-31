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
            HStack {
                Image(Region.all[0].countries[0].file)
                Text(Region.all[0].countries[0].name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
