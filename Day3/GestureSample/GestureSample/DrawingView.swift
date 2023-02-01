//
//  DrawingView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/02/01.
//

import SwiftUI

struct DrawingView: View {
    var body: some View {
        VStack {
            Color.red
                .frame(width: 200, height: 50)
            Rectangle()
                .stroke(lineWidth: 10)
                .fill(
                    LinearGradient(colors: [.red, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(height: 50)
                .cornerRadius(5)
                .padding()
//            RoundedRectangle(cornerSize: 20)
//                .frame(height:50)
            Capsule()
                .stroke(lineWidth: 10)
                .frame(height: 50)
                .padding(.horizontal)
            Circle()
                .frame(width: 100, height: 50)
            Ellipse()
                .frame(width: 100, height: 50)
            Path { path in
                path.move(to: .zero)
                path.addLine(to: CGPoint(x: 100, y: 200))
                path.addLine(to: CGPoint(x: 200, y: 100))
                path.addLine(to: CGPoint(x: 150, y: 50))
                path.closeSubpath()
            }
            .stroke(lineWidth: 5)
            .fill(.blue)
        }
        .navigationTitle("Drawing")
    }
}

struct DrawingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DrawingView()
        }
    }
}
