//
//  TabsView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/11/21.
//

import SwiftUI

struct TabsView: View {
    
    let locations: [Location] = Bundle.main.decode("locations.json")
    
    var body: some View {
        TabView {
            LocationsView(locations: locations) 
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            MapView(locations: locations)
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                }
            VideoView(locations: locations)
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
        } //: TAB
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
