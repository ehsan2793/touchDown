//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/24/23.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES

    let category: Category

    // MARK: - BODY

    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)

                Text(category.name.uppercased())
                    .fontWeight(.light)

                Spacer()
            } //: HSTACK
            .background()
            .foregroundColor(.gray)
        }) //: BUTTON
    }
}

// MARK: PREVIEW

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
