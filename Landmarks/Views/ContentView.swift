//
//  ContentView.swift
//  Landmarks
//
//  Created by Eric Liu on 8/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
            .previewDevice("iPhone 13 Pro Max")
    }
}
