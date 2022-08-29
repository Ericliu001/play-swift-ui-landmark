//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Eric Liu on 8/28/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            
            List(landmarks) { element in
                NavigationLink{
                    LandmarkDetail(landmark: element)
                } label: {
                    LandmarkRow(landmark: element)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .previewDevice("iPhone 13 Pro Max")
    }
}
