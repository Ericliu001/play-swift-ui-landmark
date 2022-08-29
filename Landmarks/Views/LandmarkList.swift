//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Eric Liu on 8/28/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { it in
            LandmarkRow(landmark: it)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
