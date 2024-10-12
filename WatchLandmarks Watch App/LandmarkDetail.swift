//
//  LandmarkDetail.swift
//  WatchLandmarks Watch App
//
//  Created by Yu Wakui on 2024/10/12.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex { $0.id == landmark.id }!
    }
    
    var body: some View {
        @Bindable var modelData: ModelData = modelData
        
        ScrollView {
            VStack {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFill()
                
                Text(landmark.name)
                    .font(.headline)
                    .lineLimit(0)
                
                Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
                    Text("Favorite")
                }
                
                Divider()
                
                Text(landmark.park)
                    .font(.caption)
                    .bold()
                    .lineLimit(0)
                
                Text(landmark.state)
                    .font(.caption)
            }
        }
    }
}

#Preview {
    let modelData = ModelData()
    LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
