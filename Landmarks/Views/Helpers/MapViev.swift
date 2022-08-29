//
//  MapViev.swift
//  Landmarks
//
//  Created by Eric Liu on 8/27/22.
//

import MapKit
import SwiftUI

struct MapViev: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.001_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapViev_Previews: PreviewProvider {
    static var previews: some View {
        MapViev(coordinate: CLLocationCoordinate2D(latitude: 34.001_286, longitude: -116.166_868))
    }
}
