//
//  ContentView.swift
//  FlightBooker
//
//  Created by Gregory Anders on 6/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var oneWay = true
    @State private var departureDate = Date()
    @State private var returnDate = Date()
    var body: some View {
        Form {
            Picker("", selection: $oneWay) {
                Text("One-way").tag(true)
                Text("Return").tag(false)
            }
            .pickerStyle(.segmented)
            DatePicker("Depart", selection: $departureDate, displayedComponents: [.date])
            if (!oneWay) {
            DatePicker("Return", selection: $returnDate, displayedComponents: [.date])
            }
            
            Button("Book") {}.disabled(!oneWay && returnDate.compare(departureDate) == .orderedAscending)
            
        }
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
