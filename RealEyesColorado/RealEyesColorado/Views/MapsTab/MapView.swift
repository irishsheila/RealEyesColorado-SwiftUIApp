//
//  MapView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/11/21.
//

import MapKit
import SwiftUI

struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 39.113014, longitude: -105.358887)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 5)
        return MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
    }()

    let locations: [Location]

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            MapAnnotation(coordinate: item.coordinates) {
                MapAnnotationView(location: item)
            }
        })
            .overlay(
                HStack(alignment: .center, spacing: 12) {
                    Image("compass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 48, height: 48, alignment: .center)

                    VStack(alignment: .leading, spacing: 3) {
                        HStack {
                            Text("Latitude: ")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                            Spacer()
                            Text("\(region.center.latitude)")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        Divider()
                        HStack {
                            Text("Longitude: ")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                            Spacer()
                            Text("\(region.center.longitude)")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding(), alignment: .top
            )
    }
}

struct MapView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapView(locations: locations)
            .previewDevice("iPhone 11 Pro")
    }
}
