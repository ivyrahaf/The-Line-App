import SwiftUI

struct MoodboardCreatorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?

    var body: some View {
        VStack {
            Text("Drag and Drop Clothing Items")
                .font(.headline)
                .padding()

            Rectangle()
                .fill(Color.gray.opacity(0.2))
                .frame(height: 300)
                .overlay(
                    Text("Canvas")
                        .foregroundColor(.gray)
                )
                .padding()

            Spacer()

            Button(action: {
                showImagePicker = true
            }) {
                Image(systemName: "camera.fill")
                    .font(.title)
                    .padding()
                    .background(Color.pink.opacity(0.2))
                    .clipShape(Circle())
            }
            .padding()
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(image: $selectedImage)
        }
    }
}