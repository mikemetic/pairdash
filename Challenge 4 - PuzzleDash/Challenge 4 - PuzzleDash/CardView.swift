//
//  CardView.swift
//  Challenge 4 - PuzzleDash
//
//  Created by Michael Williams on 1/27/26.
//

struct OverlayCard<Content: View>: View {
    let title: String
    let content: Content
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.caption).bold()
                .padding()
                .background(Color.blue) // Use your specific hex color
                .foregroundColor(.white)
            
            content
        }
        .frame(width: 250, height: 250)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 10)
    }
}
