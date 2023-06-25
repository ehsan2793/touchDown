//
//  Constant.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/24/23.
//

import SwiftUI

// DATA

let players: [Player] = Bundle.main.load(fileName: "player.json")
let categories: [Category] = Bundle.main.load(fileName: "category.json")
let products: [Product] = Bundle.main.load(fileName: "product.json")
let brands: [Brand] = Bundle.main.load(fileName: "brand.json")

// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX

// API

// IMAGE

// FONT

// STRING

// MISC
