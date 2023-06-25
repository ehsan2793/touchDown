//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/25/23.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTIES

    let brand: Brand

    // MARK: - BODY

    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
            )
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 2, x: 2, y: 2)
    }
}

// MARK: PREVIEW

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
