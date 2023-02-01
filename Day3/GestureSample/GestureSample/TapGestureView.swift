//
//  TapGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/02/01.
//

import SwiftUI

struct TapGestureView: View {
    @State var count = 0
    var body: some View {
        Text("Hello, World!, \(count)")
            .font(.largeTitle)
            .foregroundColor(Color.blue)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.yellow)
            .gesture(
                TapGesture()
                    .onEnded {
                        print("Tap")
                        count += 1
                    }
            )
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
