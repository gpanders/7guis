//
//  ContentView.swift
//  Temperature Converter
//
//  Created by Gregory Anders on 6/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var tempC = 0.0
    @State private var tempF = 0.0
    var body: some View {
        HStack {
            TextField("", value: $tempC, format: .number).onChange(of: tempC) { val in
                tempF = 9/5 * tempC + 32
            }
            Text("Celsius =")
            TextField("", value: $tempF, format: .number).onChange(of: tempF) { val in
                tempC = 5/9 * (tempF - 32)
            }
            Text("Fahrenheit")
        }
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
