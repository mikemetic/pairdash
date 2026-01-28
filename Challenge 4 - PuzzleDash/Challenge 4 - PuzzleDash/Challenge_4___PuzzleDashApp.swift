//___FILEHEADER___

import SwiftUI

@main
struct ___PACKAGENAME:identifier___App: App {
    var body: some Scene {
        WindowGroup {
            // Inside your main GameView
            ZStack {
                GameplayView() // The hearts and matching logic
                
                if viewModel.isPaused {
                    Color.black.opacity(0.3).ignoresSafeArea() // Dim the background
                    SaveProgressView() // Your new component
                        .transition(.scale)
                }
            }
            ContentView()
        }
    }
}
