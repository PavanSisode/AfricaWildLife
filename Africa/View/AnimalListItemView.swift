//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Pavan Shisode on 15/05/22.
//

import SwiftUI

struct AnimalListItemView: View {
    //: PROPERTIES
    let animal: Animal
    //: BODY
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//: VSTACK
        }//: HSTACK
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
