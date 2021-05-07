//
//  DetailFactView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/15/21.
//

import SwiftUI

struct DetailFactView: View {
    let location: Location

    var body: some View {
        GroupBox {
            TabView {
                ForEach(location.facts, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 100, idealHeight: 150, maxHeight: 250)
        }
        .padding(.horizontal)
    }
}

struct DetailFactView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("locations.json")
    static var previews: some View {
        DetailFactView(location: locations[5])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
