//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Eric Liu on 8/28/22.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    var worker: Worker
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { element in
                    
                    NavigationLink{
                        LandmarkDetail(landmark: element)
                    } label: {
                        LandmarkRow(landmark: element)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    
    static var previews: some View {
        LandmarkList(worker: DummyWorker())
            .previewDevice("iPhone 13 Pro Max")
            .environmentObject(ModelData())
    }
}
