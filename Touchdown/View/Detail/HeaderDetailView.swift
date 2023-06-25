//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/25/23.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")

            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .foregroundColor(.white)
    } //: VSTACK
}

// MARK: PREVIEW

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
