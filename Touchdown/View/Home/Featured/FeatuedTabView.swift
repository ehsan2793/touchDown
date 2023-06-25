//
//  FeatuedTabView.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/24/23.
//

import SwiftUI

struct FeatuedTabView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                    .frame( width: 400)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: PREVIEW

struct FeatuedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatuedTabView()
            .background(Color.gray)
    }
}
