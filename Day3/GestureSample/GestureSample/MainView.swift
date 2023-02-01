//
//  ContentView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/02/01.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    TapGestureView()
                } label: {
                    Text("Tap & LongPress")
                }
            }
            .navigationTitle("Gesture Test Sample")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}