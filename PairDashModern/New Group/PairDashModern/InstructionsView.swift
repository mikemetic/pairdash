//
//  InstructionsView.swift
//  PairDash_New
//
//  Created by Michael Williams on 1/28/26.
//

import SwiftUI

struct InstructionsView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                    Image(.back)
                        .resizable() //
                        .scaledToFill() //
                        .ignoresSafeArea() //
                VStack {
                    NavigationLink (destination: ContentView())
                    {
                        Image(.backbutton)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 65, height: 50)
                            .cornerRadius(10)
                            .padding(20)
                           Spacer()
                    }
                    Text("Match 20 pairs of shapes to get to the next level.\n\nGet it wrong 3 times, and the level restarts.\n\nEach new level is the same thing - but faster.\n\nThe further you get, the more shapes you unlock.\n\nPick your settings, and begin!")
                        .padding()
                        .background(Color.ltBlue)
                        .foregroundColor(.black)
                        .font(.title)
                        .cornerRadius(30)
                    Spacer()
                        .frame(height: 100).frame(height:0)
                    
                    NavigationLink (destination: SetupView())
                    {
                        Image(.nextbutton)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 125, height: 100)
                            .cornerRadius(10)
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: 190, alignment: .bottomTrailing)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview
    {
        InstructionsView()
    }
