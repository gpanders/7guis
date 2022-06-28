//
//  ContentView.swift
//  Timer
//
//  Created by Gregory Anders on 6/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var elapsed = 0.0
    @State private var duration = 10.0
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            HStack {
                Text("Elapsed Time:")
                ProgressView(value: elapsed, total: duration)
            }
            Text("\(elapsed, specifier: "%.1f")")
            HStack {
                Text("Duration:")
                Slider(value: $duration, in: 1...20)
            }
            Button("Reset") {
                elapsed = 0
            }
        }.onReceive(timer) { _ in
            if (elapsed < duration) {
                elapsed += 0.1
            }
        }.padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
