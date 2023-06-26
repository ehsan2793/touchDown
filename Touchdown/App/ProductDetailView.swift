//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/25/23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES

    @EnvironmentObject var shop: Shop

    // MARK: - BODY

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //: NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)

            //: HEADER
            HeaderDetailView()
                .padding(.horizontal)

            //: DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)

            //: DETAIL BUTTOM PART
            VStack(alignment: .center, spacing: 0) {
                //: RATING + SIZES
                RatingSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)

                //: DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } //: SCROLL

                //: QUANTITY + FAVOURITE

                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)

                //: ADD TO CART

                AddToCartDetailView()
                    .padding(.bottom, 20)
            } //: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        } //: VSTACK
        .zIndex(0)
        .edgesIgnoringSafeArea(.bottom)
        .background(shop.selectedProduct?.backgroundColor ?? sampleProduct.backgroundColor)
    }
}

// MARK: PREVIEW

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
