//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/25/23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES

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

                //: DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } //: SCROLL

                //: QUANTITY + FAVOURITE

                //: ADD TO CART

                Spacer()
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
        .background(sampleProduct.backgroundColor)
//        .ignoresSafeArea(.all,edges: .all)
    }
}

// MARK: PREVIEW

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
