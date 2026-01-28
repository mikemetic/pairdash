//
//  LevelCompleteView.swift
//  Challenge 4 - PuzzleDash
//
//  Created by Michael Williams on 1/27/26.
//

import SwiftUI

struct LevelCompleteView: View {
    var body: some View {
        ZStack {
            // Standard White Card Background
            Color.white.frame(width: 280, height: 280).cornerRadius(12).shadow(radius: 10)
            
            VStack(spacing: 30) {
                // Blue Box Text
                Text("YOU BEAT\nTHIS LEVEL!")
                    .font(.system(size: 14, weight: .bold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 100, height: 100)
                    .background(Color(red: 0.32, green: 0.39, blue: 0.69))
                
                // Two Yellow Stars
                HStack(spacing: 40) {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
                .foregroundColor(.yellow)
                .font(.system(size: 50))
            }
            
            // Red Door (Top Right)
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "door.right.hand.open")
                        .foregroundColor(.red)
                        .padding(15)
                }
                Spacer()
            }
        }
    }
}
