import SwiftUI

struct FavoriteButton: View {
    @Binding var isFavorite: Bool;
    
    var body: some View {
        Button(action: { isFavorite.toggle() }) {
            Label("Toggle Favorite", systemImage: isFavorite ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isFavorite ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isFavorite: Binding.constant(true))
}
