import SwiftUI

struct MoodboardPreviewView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Your Moodboard")
                .font(.title)
                .padding()

            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 300)
                .overlay(Text("Moodboard Preview"))

            HStack {
                Button("Save") {}
                Button("Share") {}
                Button("Create New") {}
            }
            .padding()
        }
    }
}