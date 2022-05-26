//
//  CoverImageView.swift
//  Africa
//
//  Created by Pavan Shisode on 12/05/22.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    // MARK: BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            } //: LOOP
        } //: TAB
        .tabViewStyle(.page)
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoverImageView()
                .previewLayout(.fixed(width: 400, height: 300))
                .preferredColorScheme(.dark)
        }
    }
}
