//
//  ProductModel.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/25/23.
//

import Foundation
import SwiftUI

struct Product: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var price: Int
    var description: String
    var color: [Double]

    //: Computed Properties
    var backgroundColor: Color {
        Color(red: color[0], green: color[1], blue: color[2])
    }

    var formatedPrice: String {
        "$\(price)"
    }
    
    
}
