//
//  SetupView.swift
//  PairDash_New
//
//  Created by Michael Williams on 1/28/26.
//

import SwiftUI

struct SetupView: View {
    
    @State private var control = "Pinch"

    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image(.background)
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                }
                VStack {
                    Text("Theme")
                        .font(.system(size: 60))
                        .fontDesign(Font.Design.rounded)
                        .bold()
                        .foregroundColor(.white)
                    HStack {
                        VStack {
                            Image(.primarycolors)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding(-20)
                            Text("Primary")
                                .font(.system(size: 20))
                                .fontDesign(Font.Design.rounded)
                                .bold()
                                .foregroundColor(.white)
                                .padding(20)
                        }
                        VStack {
                            Image(.blackandwhite)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding(-20)
                            Text("B&W")
                                .font(.system(size: 20))
                                .fontDesign(Font.Design.rounded)
                                .bold()
                                .foregroundColor(.white)
                                .padding(20)
                        }
                        VStack {
                            Image(.monochromatic)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding(-20)
                            Text("Mono")
                                .font(.system(size: 20))
                                .fontDesign(Font.Design.rounded)
                                .bold()
                                .foregroundColor(.white)
                                .padding(20)
                        }
                    }
                    Spacer()
                        .frame(height: 80).frame(height:30)
                    
                    VStack(alignment: .leading) {
                        Text("Shapes")
                            .font(.system(size: 60))
                            .fontDesign(Font.Design.rounded)
                            .bold()
                            .foregroundColor(.white)
                    }
                    HStack {
                        VStack {
                            Image(.star)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding(-20)
                            Text("Basic Shapes")
                                .font(.system(size: 20))
                                .fontDesign(Font.Design.rounded)
                                .bold()
                                .foregroundColor(.white)
                                .padding(10)
                        }
                        VStack {
                            Image(.element)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding(-20)
                            Text("Elements")
                                .font(.system(size: 20))
                                .fontDesign(Font.Design.rounded)
                                .bold()
                                .foregroundColor(.white)
                                .padding(10)
                        }
                    }
                    Spacer()
                        .frame(height: 80).frame(height:30)
                    
                    VStack {
                        Text("Control")
                            .font(.system(size: 60))
                            .fontDesign(Font.Design.rounded)
                            .bold()
                            .foregroundColor(.white)
                            .padding(10)
                        Picker("Choose an option", selection: $control) {
                            Text("Pinch").tag("Pinch")
                            Text("Flick").tag("Flick")
                            Text("Tap").tag("Tap")
                        }
                        .padding(10)

                        .pickerStyle(.segmented)
                        Spacer()
                            .frame(height: 80).frame(height:30)
                    }
                    NavigationLink (destination: ContentView())
                    {
                        Image(.readybutton)
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
#Preview
    {
        SetupView()

}
