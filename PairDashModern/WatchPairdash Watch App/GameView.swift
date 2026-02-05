//
//  SwiftUIView.swift
//  WatchPairdash Watch App
//
//  Created by Michael Williams on 2/4/26.
//

import SwiftUI
import WatchKit


struct GameView: View {
    var body: some View {
        ZStack {
            Image(.primary)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Image(.mono)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    GameView()
}
