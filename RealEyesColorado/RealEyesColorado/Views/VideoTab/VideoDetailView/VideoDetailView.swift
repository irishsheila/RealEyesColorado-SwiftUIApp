//
//  VideoDetailView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/19/21.
//

import SwiftUI
import youtube_ios_player_helper

struct YTWrapper: UIViewRepresentable {
    var videoID: String

    func makeUIView(context: Context) -> some UIView {
        let playerView = YTPlayerView()
        let playerVars = ["playsinline": 1]
        playerView.load(withVideoId: videoID, playerVars: playerVars)
        return playerView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

struct VideoDetailView: View {
    let videoSelected: String
    let videoID: String

    var body: some View {
        VStack {
            YTWrapper(videoID: videoID)
        }
        .accentColor(Color(Colors.lightGreen.rawValue))
        .navigationBarTitle(videoSelected)
        .scaledToFit()
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static let locations: [Location] = Bundle.main.decode("locations.json")

    static var previews: some View {
        VideoDetailView(videoSelected: "Garden of the Gods", videoID: "ga_4vhyAZGM")
    }
}
