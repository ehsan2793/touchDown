//
//  Shop.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/25/23.
//

import Foundation

class Shop : ObservableObject {
   @Published var showingProduct: Bool = false
   @Published var selectedProduct: Product? = nil
}
