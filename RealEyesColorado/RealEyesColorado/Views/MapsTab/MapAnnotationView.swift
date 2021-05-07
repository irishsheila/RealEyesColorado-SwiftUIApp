//
//  MapAnnotationView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/17/21.
//

import SwiftUI

struct MapAnnotationView: View {
    @State private var animation: Double = 0.0

    let location: Location

    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)

            Circle()
                .stroke(Color.accentColor, lineWidth: 1)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)

            Image(location.gallery[0])
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: .center)
                .clipShape(Circle())
        }
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var locations: [Location] = Bundle.main.decode("locations.json")

    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
