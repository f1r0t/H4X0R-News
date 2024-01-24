//
//  PostData.swift
//  H4X0R News
//
//  Created by Fırat AKBULUT on 26.09.2023.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable{
    var id: String {
        return objectID
    }
     
    let title: String
    let url: String? 
    let points: Int
    let objectID: String 
    
}
