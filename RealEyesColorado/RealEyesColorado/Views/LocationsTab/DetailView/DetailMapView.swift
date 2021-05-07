//
//  DetailMapView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/15/21.
//

import MapKit
import SwiftUI

struct DetailMapView: View {
    let location: Location

    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 39.113014, longitude: -105.358887)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 4.5, longitudeDelta: 4.5)
        return MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
    }()

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [location], annotationContent: { item in
            MapMarker(coordinate: item.coordinates, tint: Color(Colors.rose.rawValue))
        })
            .frame(height: 256)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

struct DetailMapView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("locations.json")

    static var previews: some View {
        DetailMapView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
