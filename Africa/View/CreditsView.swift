//
//  CreditsView.swift
//  Africa
//
//  Created by Pavan Shisode on 17/05/22.
//

import SwiftUI

struct CreditsView: View {
    //MARK: PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Copy right @ Pavan Sisode
    All right reserved
    Better ♡ apps less code
    """)
                .font(.footnote)
            .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
