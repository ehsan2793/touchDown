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
        VStack(alignment: .leading,spacing: 5) {
            //: NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
            
            //: HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            //: DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
            
            
            //: DETAIL BUTTOM PART
            
            
            //: RATING + SIZES
            
            
            //: DESCRIPTION
            
            
            //: QUANTITY + FAVOURITE
            
            
            //: ADD TO CART
            Spacer()
            
        }//: VSTACK 
//        .ignoresSafeArea(.all,edges: .all)
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
