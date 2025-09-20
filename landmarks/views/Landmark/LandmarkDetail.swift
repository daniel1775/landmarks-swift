
import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    
    var landmarkIndex: Int {
        // $0 is a shotshand who refer to first argument of a closure
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var landmark: Landmark
    
    var body: some View {
        @Bindable var modelData = modelData;
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -120)
                .padding(.bottom, -120)
            VStack(alignment: .leading) {
                HStack() {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(Color.black)
                    // By using $ it pass to reference to modelData, so the child is allowed to change its value
                    FavoriteButton(isFavorite: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack() {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                    .foregroundStyle(.secondary)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[6])
        .environment(ModelData())
}
