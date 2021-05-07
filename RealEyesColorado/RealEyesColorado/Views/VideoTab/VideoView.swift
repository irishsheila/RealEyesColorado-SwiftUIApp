//
//  VideoListView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/19/21.
//

import SwiftUI

struct VideoView: View {
    let locations: [Location]

    var body: some View {
        let shuffledList = locations.shuffled()
        NavigationView {
            List {
                ForEach(shuffledList) { location in
                    NavigationLink(destination: VideoDetailView(videoSelected: location.name, videoID: location.videoID)) {
                        VideoListItemView(location: location)
                    }
                }
            }
            .navigationBarTitle("Colorado Videos", displayMode: .large)
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("locations.json")

    static var previews: some View {
        VideoView(locations: locations)
    }
}
