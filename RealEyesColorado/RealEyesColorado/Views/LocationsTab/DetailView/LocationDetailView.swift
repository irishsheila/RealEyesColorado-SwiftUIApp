//
//  LocationDetailView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/12/21.
//

import SwiftUI

struct LocationDetailView: View {
    let location: Location
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Main Image
                let randomGalleyIndex = Int.random(in: 0 ..< location.gallery.count)
                Image(location.gallery[randomGalleyIndex])
                    .resizable()
                    .scaledToFill()
                
                // Title
                Text(location.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(Colors.rose.rawValue))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                // Headline
                Text(location.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color(Colors.darkGreen.rawValue))
                    .padding(.horizontal)
                    .lineLimit(10)
                Spacer()
                
                // Facts
                Group {
                    DetailHeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    DetailFactView(location: location)
                    Spacer()
                }
                
                // Gallery
                Group {
                    DetailHeadingView(headingImage: "photo.on.rectangle.angled", headingText: "\(location.name) in Pictures")
                    DetailGalleryScrollView(location: location)
                        .padding(.bottom)
                    Spacer()
                }
                
                // Map
                Group {
                    DetailHeadingView(headingImage: "map", headingText: "Where is \(location.name)?")
                    DetailMapView(location: location)
                    Spacer()
                }
                
                // Links
                Group {
                    DetailHeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    DetailExternalLinkView(location: location)
                }
                Spacer()
                    .padding(.bottom, 100)
            }
        }
        .navigationBarTitle("Learn about \(location.name)", displayMode: .inline)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        LocationDetailView(location: locations[0])
    }
}
