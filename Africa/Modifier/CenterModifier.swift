//
//  CenterModifier.swift
//  Africa
//
//  Created by Pavan Shisode on 17/05/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
