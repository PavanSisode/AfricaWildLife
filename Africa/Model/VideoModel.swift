//
//  VideoModel.swift
//  Africa
//
//  Created by Pavan Shisode on 16/05/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
