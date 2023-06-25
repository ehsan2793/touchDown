//
//  ContentView.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/24/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: -  PROPERTIES

    // MARK: - BODY

    var body: some View {
        VStack(spacing: 0) {
            NavigationBarView()
                .padding(.horizontal, 15)
                .padding(.bottom)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0.0, y: 5)

            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 0) {
                    FeatuedTabView()
                        .frame(height: 270, alignment: .top)
                        .padding(.vertical,10)

                    CategoryGridView()

                    FooterView()
                        .padding(.horizontal)
                } //: VSTACK
            }) //: SCROLL
        } //: VSTACK
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
