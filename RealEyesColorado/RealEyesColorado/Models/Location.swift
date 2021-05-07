//
//  Location.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/12/21.
//

import Foundation
import MapKit

struct Location: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let headerImage: String
    let gallery: [String]
    let facts: [String]
    let toDo: [String]
    let latitude: Double
    let longitude: Double
    let links: [LinkUrl]
    let videoID: String

    var coordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct LinkUrl: Codable, Hashable {
    let title: String
    let link: String
}
