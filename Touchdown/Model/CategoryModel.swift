//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/24/23.
//

import Foundation

struct Category: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
}
