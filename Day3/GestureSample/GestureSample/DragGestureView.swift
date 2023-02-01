//
//  DragGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/02/01.
//

import SwiftUI

struct DragGestureView: View {
    @State var globePos = CGSize.zero
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .scaleEffect(3.0)
                .foregroundColor(.blue)
                .offset(globePos)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            globePos = value.translation
                        }
                )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
        .navigationTitle("Drag Gesture")
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DragGestureView()
        }
    }
}
