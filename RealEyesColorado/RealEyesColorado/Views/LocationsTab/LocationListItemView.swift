//
//  LocationListItemView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/12/21.
//

import SwiftUI

struct LocationListItemView: View {
    let location: Location

    var body: some View {
        HStack(alignment: .center, spacing: 16, content: {
            Image(location.gallery[0])
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 8) {
                Text(location.name)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(Colors.rose.rawValue))
                Text(location.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(4)
                    .padding(.trailing, 8)
            }
        })
    }
}

struct LocationListItemView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("locations.json")

    static var previews: some View {
        LocationListItemView(location: locations[5])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
