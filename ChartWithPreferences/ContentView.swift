//
//  ContentView.swift
//  ChartWithPreferences
//
//  Created by Konrad on 22/08/2024.
//

import SwiftUI

struct ContentView: View {

    @StateObject var defaults = Defaults()
    @StateObject var dataGenerator = DataGenerator()
    @Environment(\.openWindow) var openWindow

    var body: some View {
        VStack {
            List {
                ForEach(0..<defaults.sampleArray.count, id: \.self) { rowIndex in
                    let date = DataUtilities.dateFromTimestamp(defaults.sampleArray[rowIndex][0])
                    Text("Date: \(DataUtilities.dateFormattedString(from: date)); " +
                         "Value 1: \(String(format: "%.3f", defaults.sampleArray[rowIndex][1])); " +
                         "Value 2: \(defaults.sampleArray[rowIndex][2].rounded())"
                    )
                }
            }
            HStack {
                HStack {
                    Text("Rows:")
                    TextField("rows", value: defaults.$rowCount, formatter: NumberFormatter())
                        .frame(width: 30)
                }
                Button("Add data") {
                    dataGenerator.count = defaults.rowCount
                    defaults.sampleArray.append(contentsOf: dataGenerator.data)
                }
                Button("Show chart") {
                    openWindow(id: "chart-window")
                }
                Button("Clean data") {
                    defaults.sampleArray.removeAll()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
