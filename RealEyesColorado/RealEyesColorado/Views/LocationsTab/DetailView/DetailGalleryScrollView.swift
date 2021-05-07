//
//  GalleryScrollView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/15/21.
//

import SwiftUI

struct DetailGalleryScrollView: View {
    let location: Location

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(location.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct DetailGalleryScrollView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("locations.json")

    static var previews: some View {
        DetailGalleryScrollView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
