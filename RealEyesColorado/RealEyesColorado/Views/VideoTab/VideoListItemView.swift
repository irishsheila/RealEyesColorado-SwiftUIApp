//
//  VideoListItemView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/19/21.
//

import SwiftUI

struct VideoListItemView: View {
    let location: Location

    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(location.gallery[0])
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    .cornerRadius(9)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }

            VStack(alignment: .leading, spacing: 10) {
                Text(location.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(Colors.lightGreen.rawValue))
            }
        }
    }
}

struct VideoListItemView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("locations.json")

    static var previews: some View {
        VideoListItemView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
