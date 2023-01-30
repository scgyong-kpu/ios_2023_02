//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2023/01/30.
//

import SwiftUI

struct ContentView: View {
    @State var page = 1
    let count = 5
    var body: some View {
        VStack {
            HStack {
                TopButton(enables: page > 1)

                Spacer()
                Text("\(page) / \(count)")
                    .font(.largeTitle)
                Spacer()
                Button {
                    if page < count {
                        page += 1
                    }
                } label: {
                    Image(systemName: "arrow.right.circle")
                        .resizable()
                        .frame(width: 64, height: 64)
                }
                .disabled(page == count)
            }
            Spacer()
            Image("cat_\(page)")
                .resizable()
                .aspectRatio(contentMode: .fit)
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

struct TopButton: View {
    var enables: Bool
    init(enables: Bool) {
        self.enables = enables
    }
    var body: some View {
        Button {
//            if page > 1 {
//                page -= 1
//            }
        } label: {
            Image(systemName: "arrow.left.circle")
                .resizable()
                .frame(width: 64, height: 64)
            
        }
        .disabled(!enables)
    }
}

struct TopButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TopButton(enables: true)
            TopButton(enables: false)
        }
    }
}
