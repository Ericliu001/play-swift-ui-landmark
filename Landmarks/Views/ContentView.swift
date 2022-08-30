//
//  ContentView.swift
//  Landmarks
//
//  Created by Eric Liu on 8/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkListWorker().createView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
            .previewLayout(.device)
            .previewDevice("iPhone 13 Pro Max")
    }
}
