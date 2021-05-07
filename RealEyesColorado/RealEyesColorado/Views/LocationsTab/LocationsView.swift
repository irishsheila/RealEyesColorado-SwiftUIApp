//
//  ContentView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/9/21.
//

import SwiftUI

struct LocationsView: View {
    let locations: [Location]

    var body: some View {
        let shuffledCovers = locations.shuffled()
        let shuffledList = locations.shuffled()

        NavigationView {
            List {
                CoverImageView(locations: shuffledCovers)
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
                    )
                    .padding(.bottom)

                ForEach(shuffledList) { location in
                    NavigationLink(destination: LocationDetailView(location: location)) {
                        LocationListItemView(location: location)
                    }
                }
            }
            .navigationBarTitle("RealEyes Colorado", displayMode: .large)
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        LocationsView(locations: locations)
    }
}
