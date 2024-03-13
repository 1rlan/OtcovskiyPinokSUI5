//
//  ContentView.swift
//  NotableSquare
//
//  Created by Irlan Abushakhmanov on 11.03.2024.
//

import SwiftUI
import UIKit

struct ContentView: View {
    private let colors: [Color] = [.white, .pink, .yellow, .black]

    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                ForEach(colors, id: \.self) { color in
                    color
                }
            }

            Square()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
