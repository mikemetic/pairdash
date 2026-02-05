//
//  LastView.swift
//  PairDashModern
//
//  Created by Michael Williams on 2/4/26.
//

import SwiftUI

struct LastView: View {
    var body: some View {
        NavigationView {
            ZStack {
                    Image(.back)
                        .resizable() //
                        .scaledToFill() //
                        .ignoresSafeArea() //
                    VStack {
                        NavigationLink (destination: SetupView())
                        {
                            Image(.backbutton)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 65, height: 50)
                                .cornerRadius(10)
                                .padding(20)
                            Spacer()
                        }
                            Image(.PD)
                        Image(.readybutton)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 125, height: 100)
                            .cornerRadius(10)
                    }
                }
            }
        .navigationBarBackButtonHidden(true)
    }
}
        #Preview {
            LastView()
        }
