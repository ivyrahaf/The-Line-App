import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Fashion Moodboard")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: MoodboardCreatorView()) {
                    Text("Create Moodboard")
                        .padding()
                        .background(Color.pink.opacity(0.3))
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}