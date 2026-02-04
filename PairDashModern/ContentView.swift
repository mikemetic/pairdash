//
//  ContentView.swift
//  PairDash_New
//
//  Created by Michael Williams on 1/28/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image(.background)
                    .resizable() //
                    .scaledToFill() //
                    .ignoresSafeArea() //
                
                VStack {
                    Image(.PD)
                        .resizable() //
                        .scaledToFit()
                    
                    Group{
                        Text("Pair")
                            .font(.system(size: 80))
                            .fontDesign(Font.Design.rounded)
                            .bold()
                            .foregroundColor(.orange)
                        
                        Text("Dash")
                            .font(.system(size: 80))
                            .fontDesign(Font.Design.rounded)
                            .bold()
                            .foregroundColor(.orange)
                        
                    }
                    NavigationLink (destination: InstructionsView())
                    {
                        Image(.startbutton)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 125, height: 100)
                            .cornerRadius(10)
                    }
                    
                }
            }
        }
    }
}
    #Preview {
            ContentView()
}
