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
                    Image(.background)
                        .resizable() //
                        .scaledToFill() //
                        .ignoresSafeArea() //
                VStack {
                    Text("These are the instructions lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum These are the instructions lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum")
                        .padding(25)
                        .background(Color.ltBlue)
                        .foregroundColor(.black)
                        .font(.title2)
                        .cornerRadius(30)
                    Spacer()
                        .frame(height: 250).frame(height:50)
                    
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
    }
}
#Preview
    {
        InstructionsView()
    }
