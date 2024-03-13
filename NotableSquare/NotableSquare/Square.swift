//
//  Square.swift
//  NotableSquare
//
//  Created by Irlan Abushakhmanov on 13.03.2024.
//

import SwiftUI

struct Square: View {
    private enum Constants {
        static let side = UIScreen.main.bounds.width / 4
        static let cornerRadius = 10.0
    }

    @State private var location = CGPoint(
        x: UIScreen.main.bounds.width / 2,
        y: UIScreen.main.bounds.height / 2
    )

    var body: some View {
        Rectangle()
            .frame(width: Constants.side, height: Constants.side)
            .foregroundColor(.white)
            .blendMode(.difference)
            .overlay(overlayedRectangle)
            .blendMode(.hue)
            .cornerRadius(Constants.cornerRadius)
            .position(location)
            .gesture(drag)
    }

    private var overlayedRectangle: some View {
        Rectangle()
            .overlay(.white.blendMode(.overlay))
            .overlay(.black.blendMode(.overlay))
    }

    private var drag: some Gesture {
        DragGesture().onChanged { newValue in
            location = newValue.location
        }
    }
}
