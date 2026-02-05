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
                Image(.back)
                    .resizable() //
                    .scaledToFill() //
                    .ignoresSafeArea() //
                
                VStack {
                    Image(.PD)
                        .resizable() //
                        .scaledToFit()
                        .frame(width: 400, height: 400)

                    
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
                        Image(.playbutton)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 125, height: 100)
                            .cornerRadius(10)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
    #Preview {
            ContentView()
}
