//
//  ContentView.swift
//  Touchdown
//
//  Created by Ehsan Rahimi on 6/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("hello")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
