//
//  SaveProgressView.swift
//  Challenge 4 - PuzzleDash
//
//  Created by Michael Williams on 1/27/26.
//
import SwiftUI
import SwiftUI

struct SaveProgressView: View {

    @State private var isSaved: Bool = false
    let currentLevel: Int
    
    var body: some View {

        ZStack {
            // Background & Door Icon (Keep these the same)
            Color.white.frame(width: 280, height: 280).cornerRadius(12).shadow(radius: 10)
            
            VStack(spacing: 30) {
                // 2. Logic to swap the Blue Box content
                if !isSaved {
                    Text("SAVE\nPROGRESS?")
                        .font(.system(size: 14, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 100, height: 100)
                        .background(Color(red: 0.3, green: 0.4, blue: 0.7))
                } else {
                    Text("PAIRDASH\nPROGRESS\nSAVED")
                        .font(.system(size: 12, weight: .bold)) // Slightly smaller to fit
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 100, height: 100)
                        .background(Color(red: 0.3, green: 0.4, blue: 0.7))
                }
                
                // 3. Logic to swap the bottom icons
                HStack(spacing: 25) {
                    if !isSaved {
                        // Show Check and X when asking to save
                        Button(action: {
                            saveLogic()
                        }) {
                            Image(systemName: "checkmark").foregroundColor(.green)
                        }
                        
                        Image(systemName: "square.and.arrow.down.fill")
                        
                        Button(action: { /* Close overlay */ }) {
                            Image(systemName: "xmark").foregroundColor(.red)
                        }
                    } else {
                        // Show only Check and Download when finished 
                        Button(action: {
                            // 1. Save locally2
                            UserDefaults.standard.set(currentLevel, forKey: "savedLevel")
                            
                            // 2. Sync to the other device
                            ConnectivityManager.shared.sendProgress(level: currentLevel)
                            
                            // 3. Update UI state (Show "Progress Saved")
                            isSaved = true
                        }) {
                            Image(systemName: "checkmark")
                                .font(.system(size: 30, weight: .bold))
                                .foregroundColor(.green)
                        }
                        Image(systemName: "square.and.arrow.down.fill")
                    }
                }
                .font(.system(size: 30, weight: .bold))
            }
        }
    }
    
    // 4. Helper function for the button action
    func saveLogic() {
        // Trigger the WatchConnectivity we set up earlier
        ConnectivityManager.shared.sendProgress(level: 1) // Replace with actual level
        
        // Flip the switch to update the UI
        withAnimation {
            isSaved = true
        }
    }
}
