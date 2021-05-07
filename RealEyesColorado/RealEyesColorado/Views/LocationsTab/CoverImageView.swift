//
//  CoverImageView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/19/21.
//

import SwiftUI

struct CoverImageView: View {
    let locations: [Location]
    
    var body: some View {
        TabView {
            ForEach(locations) { item in
                Image(item.headerImage)
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        CoverImageView(locations: locations)
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
