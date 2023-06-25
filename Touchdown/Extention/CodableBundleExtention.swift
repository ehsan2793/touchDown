//
//  CodableBundleExtention.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/24/23.
//

import Foundation
extension Bundle {
    func load<T: Codable>(fileName: String) -> T {
        // 1. Locate the JSON file
        guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
        else {
            fatalError("Could not find \(fileName) in main bundle")
        }

        // 2. Create a property for the date
        guard let data = try? Data(contentsOf: file)
        else {
            fatalError("Could not load \(fileName) from main bundle")
        }

        // 3. Create a decoder
        let decoder = JSONDecoder()

        // 4. Create a property for the decode data
        guard let decodedData = try? decoder.decode(T.self, from: data)
        else {
            fatalError("Could not parse \(fileName) as \(T.self)")
        }

        // 5. Return the ready-to-use data
        return decodedData
    }
}
