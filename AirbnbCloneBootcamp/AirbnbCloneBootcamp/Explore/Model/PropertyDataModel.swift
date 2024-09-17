//
//  PropertyDataModel.swift
//  AirbnbCloneBootcamp
//
//  Created by Eduardo Felipe das Neves Abido on 17/09/24.
//

import Foundation

struct PropertyDataModel: Codable {
    let id: Int
    var title: String
    var subtitle: String
    var price: String
    var rating: String
    var images: [String]
    var date: String
    var isFavorite: Bool
    var status: String
    var category: String
}
