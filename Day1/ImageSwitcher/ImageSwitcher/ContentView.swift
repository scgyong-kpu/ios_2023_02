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
                TopButton(imageName: "arrow.left.circle", enables: page > 1) {
                    page -= 1
                }

                Spacer()
                Text("\(page) / \(count)")
                    .font(.largeTitle)
                Spacer()
                TopButton(imageName: "arrow.right.circle", enables: page < count) {
                    page += 1
                }
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
    var imageName: String
    var enables: Bool
    var action: ()->Void
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 80, height: 80)
            
        }
        .disabled(!enables)
    }
}

struct TopButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TopButton(imageName: "arrow.left", enables: true, action: {})
            TopButton(imageName: "arrow.right", enables: false, action: {})
        }
    }
}
