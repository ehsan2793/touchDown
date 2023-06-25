//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/25/23.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid {
                Text("hello")
            } //: GRID
        } //: SCROLL
    }
}

// MARK: PREVIEW

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
