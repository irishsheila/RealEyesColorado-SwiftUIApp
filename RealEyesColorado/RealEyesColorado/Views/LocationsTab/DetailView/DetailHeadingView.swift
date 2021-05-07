//
//  DetailHeadingView.swift
//  RealEyesColorado
//
//  Created by Sheila Doherty on 3/15/21.
//

import SwiftUI

struct DetailHeadingView: View {
    var headingImage: String
    var headingText: String

    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(Color(Colors.lightGreen.rawValue))
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .background(
            Color(Colors.darkGreen.rawValue)
                .frame(height: 1)
                .offset(y: -30))
        .padding(.horizontal)
    }
}

struct DetailHeadingView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Estes Park in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
