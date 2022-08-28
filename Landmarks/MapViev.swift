//
//  MapViev.swift
//  Landmarks
//
//  Created by Eric Liu on 8/27/22.
//

import MapKit
import SwiftUI

struct MapViev: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.001_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapViev_Previews: PreviewProvider {
    static var previews: some View {
        MapViev()
    }
}
