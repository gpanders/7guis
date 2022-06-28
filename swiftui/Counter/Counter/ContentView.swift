//
//  ContentView.swift
//  Counter
//
//  Created by Gregory Anders on 6/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    var body: some View {
        HStack {
            Text("\(count)")
                Button("Count") {
                    count += 1
                }
        }
        .padding(.all)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
