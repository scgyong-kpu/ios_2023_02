//
//  RotationGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/02/01.
//

import SwiftUI

struct RotationGestureView: View {
    @State var angle = Angle.zero
    var body: some View {
        VStack {
            Text("Angle = \(String(format: "%.1f", angle.degrees))")
                .font(.headline)
                .foregroundColor(.blue)
            Spacer()
            VStack {
                Image(systemName: "arrow.right.circle")
                    .font(.largeTitle)
                    .scaleEffect(4.0)
                    .padding()
                Text("This is a test text")
                    .font(.largeTitle)
                    .padding()
            }
            .foregroundColor(.purple)
            .background(Color.orange.opacity(0.3))
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        angle = value
                    }
                    .onEnded { _ in
                        angle = .zero
                    }
            )
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(0.2))
        .navigationTitle("Rotation Gesture")
    }
}

struct RotationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RotationGestureView()
        }
    }
}
