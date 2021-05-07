//
//  DetailExternalLinkView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/15/21.
//

import SwiftUI

struct DetailExternalLinkView: View {
    let location: Location

    var body: some View {
        GroupBox {
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    ForEach(location.links, id: \.self) { item in
                        HStack {
                            Image(systemName: "arrow.up.right.square")
                                .foregroundColor(.white)
                            Link(item.title, destination: (URL(string: item.link) ?? URL(string: "http://wikipedia.org"))!)
                                .foregroundColor(Color(Colors.mediumGreen.rawValue))
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }

        .padding(.horizontal)
    }
}

struct DetailExternalLinkView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("locations.json")

    static var previews: some View {
        DetailExternalLinkView(location: locations[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
