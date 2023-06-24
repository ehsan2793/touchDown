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
                .padding()
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0.0, y: 5)
            
            Spacer()
            
            FooterView()
                .padding(.horizontal)
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
